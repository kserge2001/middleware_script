#!/bin/bash

# Update the system
sudo dnf update

# Install required dependencies
sudo dnf install -y dnf-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo   

# Install Docker
sudo dnf install docker-ce

# Start and enable Docker
sudo systemctl start docker
