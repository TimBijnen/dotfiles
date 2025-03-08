#!/bin/bash

echo "Installing Docker..."

if [[ -f "/etc/os-release" && "$(grep '^ID=' /etc/os-release)" == *"ubuntu"* ]]; then
    sudo apt update
    sudo apt install -y \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt update
    sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
    sudo usermod -aG docker $USER

    echo "Docker and Docker Compose installed successfully! Please log out and log back in."
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask docker
    echo "Docker and Docker Compose installed successfully! Open the Docker app to start it."
else
    echo "Unsupported operating system for Docker installation."
fi

echo "Docker installation completed!"