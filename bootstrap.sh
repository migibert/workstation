#!/bin/bash

sudo apt-get install -y python-pip
sudo pip install -U ansible
sudo pip install -U ansible-role-manager

sudo arm install malk.java8-oracle thydel.vagrant migibert.terraform angstwad.docker_ubuntu playlist.go

ansible-playbook -i localhost, workstation.yml --connection=local --extra-vars "dev_user=$(whoami)"
