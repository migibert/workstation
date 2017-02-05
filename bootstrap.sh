#!/bin/bash

sudo apt-get install -y build-essential python-pip libffi-dev libssl-dev 
sudo pip install -U ansible

sudo ansible-galaxy install thydel.vagrant migibert.terraform angstwad.docker_ubuntu jacobwgillespie-ansible.go --force

ansible-playbook -i localhost, workstation.yml --connection=local --extra-vars "dev_user=$(whoami)"
