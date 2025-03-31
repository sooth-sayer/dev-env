#!/bin/bash

java_version=$(java -version 2>&1 | awk -F '"' '/version/ {split($2,a,"."); print (a[1] == "1" ? a[2] : a[1])}')
echo "$java_version"
