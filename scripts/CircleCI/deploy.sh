#!/bin/sh
product_name="ZappAppConnector"
project_version="`/usr/libexec/PlistBuddy -c \"Print :CFBundleShortVersionString\" \"./${product_name}/Info.plist\"`"

# start with a clean output folder
build_dir="./build"
rm -rf "${build_dir}"
mkdir -p "${build_dir}/Build/Products"
product_dir="${build_dir}/Build/Products"
echo $product_dir

echo "build_dir => ${build_dir}"

set -o pipefail && xcodebuild clean build \
           -workspace ${product_name}.xcworkspace \
						-scheme ${product_name} \
						-sdk iphoneos \
						-configuration Release \
						CODE_SIGNING_REQUIRED=NO \
						-derivedDataPath "${build_dir}" | xcpretty

if test $? -ne 0
then
  echo "xcodebuild on device failed!"
  exit 500
fi

set -o pipefail && xcodebuild clean build \
           -workspace ${product_name}.xcworkspace \
						-scheme ${product_name} \
						-sdk iphonesimulator \
						VALID_ARCHS="x86_64 i386" \
						-destination 'platform=iOS Simulator,name=iPhone 8' \
						-configuration Release \
						-derivedDataPath "${build_dir}" | xcpretty

if test $? -ne 0
then
  echo "xcodebuild on simulator failed!"
  exit 500
fi

device_build_dir="${build_dir}/Build/Products/Release-iphoneos"
device_compiled_framework_path="${device_build_dir}/${product_name}.framework"
echo "device_compiled_framework_path => ${device_compiled_framework_path}"

simulator_build_dir="${build_dir}/Build/Products/Release-iphonesimulator"
simulator_compiled_framework_path="${simulator_build_dir}/${product_name}.framework"
echo "simulator_compiled_framework_path => ${simulator_compiled_framework_path}"

# Copy the framework structure to the product folder
cp -R "${device_compiled_framework_path}" "${product_dir}"

product_modules_dir="${product_dir}/${product_name}.framework/Modules/${product_name}.swiftmodule"
simulator_modules_dir="${simulator_build_dir}/${product_name}.framework/Modules/${product_name}.swiftmodule"
cp -a "${simulator_modules_dir}/." "${product_modules_dir}/"

# Create universal binary file using lipo and place the combined executable in the copied framework directory
lipo -create -output "${product_dir}/${product_name}.framework/${product_name}" "${device_compiled_framework_path}/${product_name}" "${simulator_compiled_framework_path}/${product_name}"

# Delete compilation leftovers that should not be in the release library
rm -f "${product_dir}/${product_name}.framework/libswiftRemoteMirror.dylib"
rm -rf "${product_dir}/${product_name}.framework/Frameworks"

# check if tag for this version is exists
if [ $(git tag -l "$project_version") ]; then
  echo "ERROR: Project version needs to be updated, tag for this version already exists."
  exit 500
fi

# creating a tag with new version
git tag $project_version
git push origin $project_version

# get the latest tag from the specified git repository and tag's commit
product_version=$(git describe --abbrev=0 --tags)
product_tag_commit=$(git rev-list -n 1 ${product_version})

# compress the framework
zipped_product_file_name="${product_name}_Framework_${product_version}_${product_tag_commit}.zip"

# using zip
echo; echo
echo "Compressing using zip..."
pushd "${product_dir}"
zip -rq "${zipped_product_file_name}" "${product_name}.framework"
popd

zipped_product_file_path="${product_dir}/${zipped_product_file_name}"

# upload the compressed file to the BinTray host
bintray_username="applicasterapps"
bintray_organization="applicaster-ltd"
bintray_api_key="${BINTRAY_API_KEY}"
bintray_repo="pods"
bintray_package="${product_name}"
bintray_file_path="${bintray_organization}/${bintray_repo}/${bintray_package}/${product_version}"

bintray_upload_url="https://api.bintray.com/content/${bintray_file_path}/${zipped_product_file_name}?publish=1&override=0"

echo; echo
echo "Uploading to: ${bintray_upload_url}"
echo; echo

curl -sST "${zipped_product_file_path}" -u"${bintray_username}":"${bintray_api_key}" "${bintray_upload_url}"
if test $? -ne 0
then
	exit 505
fi
echo; echo

bintary_download_url="https://dl.bintray.com/${bintray_organization}/${bintray_repo}/${zipped_product_file_name}"
echo "Uploaded ${bintary_download_url}"

# load the template podspec and replace the version and source link
podspec_template=$(<"${product_name}.podspec")
podspec_template="${podspec_template/__version__/${product_version}}"
podspec_filled="${podspec_template/__source_url__/${bintary_download_url}}"

podspec_file_name="${product_name}.podspec"
echo "${podspec_filled}" > "${product_dir}/${podspec_file_name}"

# push the new podspec to the CocoaPods repository
# copy to folder where pod repo push called. This file tells to cocoaods what use swift version
cp ./.swift-version ${product_dir}
pushd "${product_dir}"
ls ${product_dir}

pod repo add master https://github.com/CocoaPods/Specs.git
pod repo add ApplicasterSpecs git@github.com:applicaster/CocoaPods.git
pod repo push --verbose --no-private --allow-warnings ApplicasterSpecs "${podspec_file_name}"
popd

# Removed Build directory
rm -rf "${build_dir}"
