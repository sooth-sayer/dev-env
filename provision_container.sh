#!/bin/bash

hosts_file=$(mktemp /tmp/.hosts-tmp)
cat <<EOF > $hosts_file
[dev]
$1
EOF

current_path=$(pwd)
script_path=$(dirname $0)
cd $script_path
ansible-playbook -i $hosts_file -i .inv-docker.yaml dev_env_container.yaml
cd $current_path

rm $hosts_file
