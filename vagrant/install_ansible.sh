#!/bin/bash 

echo "I: Updating package cache..."
sudo apt-get update 

echo "I: Install pre requisite packages...."
sudo apt-get install -yq  python2.7 python2.7-dev software-properties-commo

echo "I: Setup ansible PPA for ubuntu..."
sudo apt-add-repository ppa:ansible/ansible

echo "I: Update package cache again to pull the index of packages  from ansible PPA..."
sudo apt-get update

echo "I: Install ansible now ..."
sudo apt-get install -yq  ansible


echo "I: Create a flag notifying ansible is been installed..."
touch /opt/.ansible_installed

exit 0

