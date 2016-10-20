#!/bin/bash

adb_output=`$ANDROID_SDK/platform-tools/./adb devices`
devices_raw=`echo "$adb_output" | tail -n +2 | sed -e 's/\([^[:blank:]]\{1,\}\).*/\1/g'`

read -r -a devices <<< "$devices_raw"
echo "${devices[0]}"
