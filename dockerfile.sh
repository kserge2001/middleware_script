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
sudo systemctl enable docker

# Verify Docker installation
sudo docker --version

echo "Docker has been successfully installed."

# Optionally, add the current user to the 'docker' group to run Docker without sudo
# sudo usermod -aG docker $USER
# echo "You may need to log out and back in for the group changes to take effect."


