#!/bin/bash

echo "Installing Google Chrome..."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # For Linux
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
    sudo apt install -y ./chrome.deb
    rm chrome.deb
    echo "Google Chrome installed successfully on Linux!"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # For macOS
    brew install --cask google-chrome
    echo "Google Chrome installed successfully on macOS!"
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
    # For Windows (requires manual installation)
    echo "Please download and install Google Chrome manually from https://www.google.com/chrome/."
else
    echo "Unsupported operating system for Google Chrome installation."
fi

echo "Google Chrome installation completed!"