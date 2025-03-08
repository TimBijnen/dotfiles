#!/bin/bash

echo "Installing SourceTree..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS installation using Homebrew
    echo "Installing SourceTree on macOS..."
    brew install --cask sourcetree
    echo "SourceTree installed successfully on macOS!"
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
    # Windows installation (manual download required)
    echo "SourceTree installation on Windows requires manual steps."
    echo "Please download SourceTree from https://www.sourcetreeapp.com/ and follow the installation instructions."
else
    echo "Unsupported operating system for SourceTree installation."
fi

echo "SourceTree installation completed!"