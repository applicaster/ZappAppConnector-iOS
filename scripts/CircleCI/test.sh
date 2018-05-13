#!/bin/sh
set -e

echo "Test will be started!"
scan --output_directory $CIRCLE_TEST_REPORTS/results.xml -s ApplicasterSDK
if test $? -ne 0
then
echo "xcodebuild test failed!"
exit 500
fi
