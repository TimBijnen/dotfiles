#!/bin/bash

echo "Installing Postman..."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo snap install postman
    echo "Postman installed successfully!"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask postman
    echo "Postman installed successfully!"
else
    echo "Unsupported operating system for Postman installation."
fi

echo "Postman installation completed!"
