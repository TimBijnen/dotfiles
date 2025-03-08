#!/bin/bash

echo "Installing Spotify..."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # For Linux (Debian/Ubuntu-based distros)
    echo "Adding Spotify repository..."
    curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo gpg --dearmor -o /usr/share/keyrings/spotify-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/spotify-archive-keyring.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt update
    sudo apt install -y spotify-client
    echo "Spotify installed successfully on Linux!"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # For macOS
    echo "Installing Spotify on macOS using Homebrew..."
    brew install --cask spotify
    echo "Spotify installed successfully on macOS!"
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
    # For Windows
    echo "Please download and install Spotify manually from https://www.spotify.com/download."
else
    echo "Unsupported operating system for Spotify installation."
fi

