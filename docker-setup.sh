#!/bin/bash


# Installation of docker on centos7
# Author: Mao
# Date: 2023, Sept28



# Update the system
sudo yum update -y

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker CE
sudo yum install -y docker-ce

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the docker group to run Docker without sudo
sudo usermod -aG docker $USER

# Print Docker version
docker --version

# Verify Docker installation with a test container
sudo docker run hello-world

