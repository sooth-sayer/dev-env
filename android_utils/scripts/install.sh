#!/bin/bash

self_path=$(dirname $0)
project_path=$1
$ANDROID_SDK/platform-tools/./adb -s $($self_path/get-first-device.sh) install -r $project_path/app/build/outputs/apk/app-debug.apk
