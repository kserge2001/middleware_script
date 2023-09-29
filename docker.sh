#!/bin/bash
## this script will create docker on a centos distro
sudo dnf update
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
01~
sudo dnf install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
docker --version


