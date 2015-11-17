#!/bin/bash

sudo apt-get install -y python-pip
sudo pip install -U ansible

sudo ansible-galaxy install malk.java8-oracle thydel.vagrant migibert.terraform --force

ansible-playbook -i localhost, workstation.yml --connection=local
