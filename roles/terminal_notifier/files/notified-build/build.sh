#!/bin/bash

current_dir=$(pwd)

args=(project_path build_cmd log_path callback)
for item in ${args[*]}
do
  if [[ "$#" -ne 0 ]]
  then
    eval $item=\"$1\"
    shift
  fi
done

cd $project_path

$($build_cmd > $log_path)
res=$?

cd $current_dir

if [[ -nz $callback ]]
then
  $callback $res "$@"
fi
