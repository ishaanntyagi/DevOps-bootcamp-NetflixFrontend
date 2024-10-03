#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install packages to allow apt to use a repository over HTTPS
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the apt package index with the new repository information
sudo apt-get update

# Install the latest version of Docker CE
sudo apt-get install -y docker-ce

# Enable Docker to start on boot
sudo systemctl enable docker

# Start Docker if it's not running
sudo systemctl start docker

# Verify that Docker is installed correctly by running the hello-world image
sudo docker run hello-world

# Add the current user to the Docker group so you can execute Docker commands without using sudo
sudo usermod -aG docker $USER

# Download Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the Docker Compose binary
sudo chmod +x /usr/local/bin/docker-compose

# Check Docker Compose version to verify successful installation
docker-compose --version

echo "Docker and Docker Compose have been installed successfully"
echo "Please log out and log back in for the changes to take effect, or run 'newgrp docker' to use Docker without restarting."
