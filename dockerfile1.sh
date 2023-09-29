#!/bin/bash


# update the system
sudo dnf update

# install required dependencies
sudo dnf install -y dnf-utils device-mapper-persistent-data
ivm2

# Add docker repository
sudo dnf config-manager --add-repo=
https://download.docker.com/linux/centos/docker-ce.repo


# install docker
sudo dnf install docker-ce


# start and enable docker
sudo systemctl start docker
