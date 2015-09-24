#!/bin/bash

android_ip=$1
port=$2

$HOME/Library/Android/sdk/platform-tools/./adb tcpip $port
$HOME/Library/Android/sdk/platform-tools/./adb connect $android_ip:$port
