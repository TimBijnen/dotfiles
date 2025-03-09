#!/bin/bash

echo "Installing Fiddler..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask fiddler
    echo "Fiddler installed successfully!"
else
    echo "This script is intended for macOS only."
fi

echo "Fiddler installation completed!"