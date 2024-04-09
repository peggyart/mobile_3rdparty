#!/usr/bin/env bash

# Untested, might have to run the commands here manually.

set -euxo pipefail

mkdir -p ./opencv/build_android
cd ./opencv

python3 platforms/android/build_sdk.py \
  --extra_modules_path  $HOME/src/github.com/opencv_contrib/modules \
  --modules_list core,img_hash,features2d,imgproc,imgcodecs,highgui,dnn,flann,calib3d,gapi \
  --no_kotlin \
  --sdk_path $HOME/Library/Android/sdk/ \
  --ndk_path /opt/homebrew/share/android-ndk \
  --no_media_ndk \
  --no_samples_build \
  --use_android_buildtools \
  $PWD/build_android
