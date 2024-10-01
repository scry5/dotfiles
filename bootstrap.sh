#!/bin/bash

python3 -m venv ansible_env
source ansible_env/bin/activate
pip install ansible
deactivate

ansible-playbook -f 10 $(dirname "$0"})/playbook.yml
