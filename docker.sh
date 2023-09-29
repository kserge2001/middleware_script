#!/bin/bash

# Update System Packages
sudo rm -rf /etc/yum.docker-ce.repo
sudo yum update

#Install Required Dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

#Add Docker Repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE 
sudo yum install docker-ce

#sudo systemctl start docker
#sudo systemctl enable docker
