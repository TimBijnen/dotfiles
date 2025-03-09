#!/bin/bash

echo "Installing Spotify..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # For macOS
    echo "Installing Spotify on macOS using Homebrew..."
    brew install --cask spotify
    echo "Spotify installed successfully on macOS!"
else
    echo "This script is intended for macOS only."
fi

echo "Spotify installation completed!"