#!/bin/bash

android_ip=$1
port=$2

$HOME/tools/android-sdk/platform-tools/adb tcpip $port
$HOME/tools/android-sdk/platform-tools/adb connect $android_ip:$port
