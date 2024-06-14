Install default ubuntu ansible:

sudo apt install ansible

sudo ansible-playbook -K --connection=local --inventory 127.0.0.1, workstation.yml

OR

bash install-laptop.sh

Brutaly overdrive shell with fish/starship and makes helix as default editor

# Personal Info and Logs

- clamav log only filenames of files where it find warnings to wazuh
- wazuh, automated actions can read from "cat /var/ossec/logs/active-responses.log"
- Machine name and username are send to wazuh
- "Current location" based on public ip send to wazuh
- any private information writen in username is send to wazuh (example password)
  
  