#!/bin/bash

echo "Installing .NET SDK..."

# For macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask dotnet-sdk
    echo ".NET SDK installed successfully on macOS!"
else
    echo "This script is intended for macOS only."
fi

echo ".NET SDK installation completed!"