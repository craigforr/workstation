#!/usr/bin/env bash

NORMAL="\e[0m"
BOLD="\e[1m"
RED="\e[91m"
GREEN="\e[92m"
YELLOW="\e[93m"
WHITE="\e[97m"

# Verify Homebrew is installed
if ! command -v brew &> /dev/null; then
  echo -e "\n\e[31mPlease make certain Homebrew is installed and 'brew' is in your PATH.\e[0m\n"
  exit 1
fi

brew update

# Install Ansible
brew install ansible

echo -e "${NORMAL}Ready to run ansible playbook:${NORMAL}"
echo -e "${GREEN}  exec -l bash -l # Refresh shell${NORMAL}"
echo -e "${GREEN}  ansible-playbook main.yml --tags firstrun --ask-become -v${NORMAL}"

# EOF
