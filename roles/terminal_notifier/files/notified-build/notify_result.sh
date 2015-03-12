#!/bin/bash

notifier_path=~/stuff/notifier/notify-shell-script.sh

result=$1
title=$2
log_path=$3

if [[ $result == 0 ]]
then
  message="Success"
else
  message="Fail"
fi

$notifier_path "$title" "$message" "$log_path"
