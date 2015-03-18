#!/bin/bash

project_path=$1
cd $project_path
./gradlew assembleDebug
