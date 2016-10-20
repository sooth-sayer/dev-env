#!/bin/bash

self_path=$(dirname $0)
run_activity=$1
$ANDROID_SDK/platform-tools/./adb -s $($self_path/get-first-device.sh) shell am start -n "$run_activity" -a "android.intent.action.MAIN" -c "android.intent.category.LAUNCHER"
