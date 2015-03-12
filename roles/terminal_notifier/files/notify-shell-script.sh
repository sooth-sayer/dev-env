#!/bin/bash

title=$1
message=$2
log=$3

if [[ -nz $log ]];
then
  option_execute="-execute"
  option_execute_args="open $log"
fi

terminal-notifier -title "$title" -message "$message" $option_execute "$option_execute_args"
