#!/bin/bash

run_activity=$1
# com.agimamobile.ingate/com.agimamobile.ingate.activity.LoginActivity
$HOME/tools/android-sdk/platform-tools/adb -s $ANDROID_DEVICE shell am start -n "$run_activity" -a "android.intent.action.MAIN" -c "android.intent.category.LAUNCHER"
