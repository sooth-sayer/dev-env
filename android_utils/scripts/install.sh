#!/bin/bash

project_path=$1
$HOME/Library/Android/sdk/platform-tools/./adb -s $ANDROID_DEVICE install -r $project_path/app/build/outputs/apk/app-debug.apk
