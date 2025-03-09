#!/bin/bash

echo "Installing SourceTree..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS installation using Homebrew
    echo "Installing SourceTree on macOS..."
    brew install --cask sourcetree
    echo "SourceTree installed successfully on macOS!"
else
    echo "This script is intended for macOS only."
fi

echo "SourceTree installation completed!"