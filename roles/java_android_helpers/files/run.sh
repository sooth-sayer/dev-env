#!/bin/bash

self_path=$(dirname $0)
project_path=$1
run_activity=$2

$self_path/build.sh $project_path
$self_path/install.sh $project_path
$self_path/start.sh "$run_activity"
