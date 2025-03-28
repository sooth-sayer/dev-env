#!/bin/bash

pipx_local_venvs=$(pipx environment -V PIPX_LOCAL_VENVS)
powerline_venvs_root="$pipx_local_venvs/powerline-status"
root_package_path=$("$powerline_venvs_root"/bin/python -m pip show powerline-status | grep Location | sed -e "s/Location\:\s*\(.*\)/\1/g")

echo "$root_package_path/powerline"
