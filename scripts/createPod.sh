#!/bin/sh
product_name=ZappAppConnector

# Getting version number
INFOPLIST_FILE="./ZappAppConnector/Info.plist"
versionNumber=$(/usr/libexec/PlistBuddy -c "Print CFBundleShortVersionString" "$INFOPLIST_FILE")
echo Version Number: $versionNumber

# Check Tag for current version number
if git rev-parse -q --verify "refs/tags/$versionNumber" >/dev/null; then
    echo Script will be stoped: Tag exist for current version number
    exit
else
    echo "No tag found for current version. Script will start task"
fi

# Create Tag
echo Creating tag
git tag $versionNumber
git push origin $versionNumber

# Load the template podspec and replace the version
echo Updating version number in template
podspec_template=$(<"${product_name}.podspec")
podspec_template="${podspec_template/__version__/${versionNumber}}"
echo $podspec_template
podspec_file_name="${product_name}.podspec"

pod_dir="$(mktemp -d -t ${product_name}-Pod)"
echo "${podspec_template}" > "${pod_dir}/${podspec_file_name}"

# #Push repo to Cocoapods
echo Pushing podspec to repo
pod setup

pod repo add ApplicasterSpecs git@github.com:applicaster/CocoaPods.git
pod repo add ApplicasterSpecs-Private git@github.com:applicaster/CocoaPods-Private.git
pod repo push --verbose --no-private --allow-warnings ApplicasterSpecs "${pod_dir}/${podspec_file_name}"
