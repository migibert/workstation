#!/bin/bash

sudo apt-get install -y python-pip
sudo pip install -U ansible

sudo ansible-galaxy install malk.java8-oracle thydel.vagrant migibert.terraform angstwad.docker_ubuntu playlist.go --force

ansible-playbook -i localhost, workstation.yml --connection=local --extra-vars "dev_user=$(whoami)"
