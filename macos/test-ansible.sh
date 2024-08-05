#!/bin/bash
# ----------------------------------------------------------------------
# Script:       test-ansible.sh
# Description:  Performs a sanity check on Ansible installation,
#               against the localhost.
# ----------------------------------------------------------------------
NORMAL="\e[0m"
RED="\e[91m"

ansible -m setup localhost

ansible-playbook -i inventory.yml test.yml

# EOF
