#!/bin/bash

echo "Installing Google Chrome..."

# For macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask google-chrome
    echo "Google Chrome installed successfully on macOS!"
else
    echo "This script is intended for macOS only."
fi

echo "Google Chrome installation completed!"