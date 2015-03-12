#!/bin/bash

self_dir_path=$(dirname $0)

project_path=$1
project_build_cmd=$2
title="$3 - $(date +%H:%M:%S)"
build_log_path=$4

message="Started"
callback="$self_dir_path/notify_result.sh"

$self_dir_path/notify_start.sh "$title"
$self_dir_path/build.sh $project_path "$project_build_cmd" $build_log_path $callback "$title" $build_log_path&
