#!/bin/bash

# ask wazuh agent name

sudo ansible-playbook -K --connection=local --inventory 127.0.0.1, laptop_setup/ansible-work/workstation.yml > /tmp/output.txt 2>&1
