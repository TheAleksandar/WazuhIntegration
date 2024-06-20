# Wazuh Integration

Wazuh Integration Repository Description:

This repository contains Ansible playbooks

Welcome to the WazuhIntegration repository! This repository is dedicated to simplifying the installation and configuration of Wazuh agents, along with essential security configurations, using Ansible playbooks. This repository aims to provide with reliable and easy-to-use scripts to enhance the security and monitoring of your systems.


Install default ubuntu ansible:

```shell
sudo apt install ansible
```

```shell
sudo ansible-playbook -K --connection=local --inventory 127.0.0.1, workstation.yml
```

OR

If you feel like an adventurer, feel free to edit vars.yml. Brutaly overdrive shell with fish/starship and makes helix as default editor.

## Personal Info and Logs

* clamav log only filenames of files where it find warnings to wazuh
* wazuh, automated actions can read from "cat /var/ossec/logs/active-responses.log"
* Machine name and username are send to wazuh
* "Current location" based on public ip send to wazuh
* any private information writen in username is send to wazuh (example password)
