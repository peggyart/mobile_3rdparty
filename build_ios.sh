#!/usr/bin/env bash

# Untested, might have to run the commands here manually.

set -euxo pipefail

mkdir -p ./opencv/build_ios
cd ./opencv

python3 platforms/apple/build_xcframework.py \
  --contrib $HOME/src/github.com/opencv_contrib \
  --iphoneos_deployment_target "14.0" \
  --build_only_specified_archs \
  --iphoneos_archs "arm64"  \
  --iphonesimulator_archs "arm64"  \
  --without gapi \
  --without java \
  --without js \
  --without ml \
  --without objc \
  --without objdetect \
  --without photo \
  --without python \
  --without stitching \
  --without ts \
  --without video \
  --without videoio \
  --without world  \
  --disable-swift \
  --out ./build_ios
