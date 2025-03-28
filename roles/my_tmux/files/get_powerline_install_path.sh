#!/bin/bash

root_package_path=$(pipx runpip powerline-status show powerline-status | grep Location | sed -e "s/Location\:\s*\(.*\)/\1/g")
echo "$root_package_path/powerline"
