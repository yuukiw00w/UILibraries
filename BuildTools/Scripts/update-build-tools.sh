#!/bin/bash

echo "set SDKROOT"
SDKROOT=(xcrun --sdk macosx --show-sdk-path)

cd $SRCROOT/BuildTools

echo "start swift package update"
swift package update

echo "start build swiftformat"
swift build -c release --product swiftformat

echo "start build swiftlint"
swift build -c release --product swiftlint

echo "start build license-plist"
swift build -c release --product license-plist

echo "finished update"
