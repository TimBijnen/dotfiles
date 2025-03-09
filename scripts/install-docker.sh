#!/bin/bash

echo "Installing Docker..."

# For macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask docker
    echo "Docker and Docker Compose installed successfully! Open the Docker app to start it."
else
    echo "This script is intended for macOS only."
fi

echo "Docker installation completed!"