#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
then
    echo "Please run as root"
    exit
fi

# Check if LUKS is enabled
if !  [ -s /etc/crypttab ]
then
    # If it is, display a dialog box to the user
    logger "Looks like LUKS is not enabled. Reinstall machine. Mursu is sad :("
fi

# Check if UFW is enabled
if ! sudo ufw status | grep -q '^Status: active'
then
    # If not, display a dialog box to the user
    logger "UFW is not enabled. Mursu will enable it now :(, very sad"
    ufw enable
fi

# Check if SSH is running
if systemctl is-active --quiet ssh
then
    # If it is, display a dialog box to the user
    logger "SSH is enabled, Mursu will shut it down now :("
    systemctl disable --now ssh.socket
    systemctl disable --now ssh
fi
