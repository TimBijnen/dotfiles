#!/bin/bash

echo "Installing Postman..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask postman
    echo "Postman installed successfully!"
else
    echo "This script is intended for macOS only."
fi

echo "Postman installation completed!"