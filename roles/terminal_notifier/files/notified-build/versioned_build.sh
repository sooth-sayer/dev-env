#!/bin/bash

self_dir_path=$(dirname $0)
callback="$self_dir_path/build_result_notify.sh"

project_path=$1
project_build_cmd=$2
version_file=$3
build_log_path=$4

if [[ -e "$version_file" ]]
then
  build_version=$(cat $version_file)
else
  build_version=0
fi

title="Build #$build_version"
echo $(($build_version + 1)) > $version_file

$self_dir_path/build_with_notify.sh $project_path "$project_build_cmd" "$title" $build_log_path&
