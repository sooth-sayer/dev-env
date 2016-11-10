#!/bin/bash

root_package_path=$(pip3 show powerline-status | grep Location | sed -e "s/Location\:\s*\(.*\)/\1/g")
echo "$root_package_path/powerline"
