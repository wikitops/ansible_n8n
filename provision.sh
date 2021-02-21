#!/bin/bash

# Manage RedhHat environment
if [ -f /etc/redhat-release ] ; then
  sudo dnf update
  sudo dnf upgrade -y
  sudo dnf install -y python3

# Manage Debian / Ubuntu environment
elif [ -f /etc/debian_version ] ; then
  sudo apt update
  sudo apt upgrade -y
  sudo apt install -y python3 python3-apt
fi

sudo alternatives --set python /usr/bin/python3
