#!/bin/bash

# Install Ansible
sudo apt-get update
sudo apt-get install -y ansible

# Install Docker
sudo apt-get install -y docker.io

# Run Docker container (example)
sudo docker run -d --name my_container nginx

echo "Ansible and Docker setup completed."
