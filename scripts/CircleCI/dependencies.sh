#!/bin/sh

#XCPretty - Helps to sort xcode build logs
sudo gem install xcpretty
sudo gem install fastlane
xcode-select --install

# Installing CocoaPods
sudo gem install cocoapods -v 1.4.0

echo Installing podspec

git fetch
git checkout .
git submodule sync --recursive
git submodule update --init --recursive

pod update
