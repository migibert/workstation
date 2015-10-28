#!/bin/bash

sudo apt-get install -y python-pip
sudo pip install -U ansible

sudo ansible-galaxy install innohub-ansible.ruby-install --force
sudo ansible-galaxy install malk.java8-oracle --force
sudo ansible-galaxy install thydel.vagrant --force

ansible-playbook -i localhost, workstation.yml --connection=local
