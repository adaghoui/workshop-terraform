#!/bin/bash

# Install Docker
apt-get update -y
apt-get install -y docker.io

# Enable Docker service
systemctl enable docker
systemctl start docker

echo "Docker is ready to use!"
