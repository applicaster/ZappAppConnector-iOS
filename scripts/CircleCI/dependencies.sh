#!/bin/sh

#XCPretty - Helps to sort xcode build logs
sudo gem install xcpretty
sudo gem install fastlane
xcode-select --install

echo Deleting cocoapods cachable items
# Remove Pods and Podlock regarding caching issue
rm -rf Pods
rm -rf Podfile.lock

echo Installing podspec

pod update
