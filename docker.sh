#!/bin/bash

# Update the system
sudo yum -y update

# Install required dependencies
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add the Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Check Docker version
docker --version

# Add your user to the docker group (optional, for running Docker without sudo)
sudo usermod -aG docker $(Akan)