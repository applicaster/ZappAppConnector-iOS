#!/bin/sh

product_name=ZappAppConnector

OUTPUT_DIR=$(mktemp -d -t ${product_name}-temp)
BUILD_OUTPUT_DIR="$OUTPUT_DIR"/build
RELEASE_OUTPUT_DIR="$OUTPUT_DIR"/release

echo xcodebuild -scheme "${product_name}" \
                -workspace ${product_name}.xcworkspace \
                -configuration Release \
                -sdk iphonesimulator \
                VALID_ARCHS="x86_64 i386" \
                -destination "platform=iOS Simulator,name=iPad Retina,OS=latest" \
                CONFIGURATION_BUILD_DIR=$BUILD_OUTPUT_DIR \
                 "$@" 2>&1 \
                 build

xcodebuild  -scheme "${product_name}" \
            -workspace ${product_name}.xcworkspace \
            -configuration Release \
            -sdk iphonesimulator \
            VALID_ARCHS="x86_64 i386" \
            -destination "platform=iOS Simulator,name=iPad Retina,OS=latest" \
            CONFIGURATION_BUILD_DIR=$BUILD_OUTPUT_DIR \
            "$@" 2>&1 \
            build
