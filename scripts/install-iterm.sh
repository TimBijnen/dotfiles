#!/bin/bash

echo "Installing iTerm2..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask iterm2
    echo "iTerm2 installed successfully!"
else
    echo "iTerm2 is only available on macOS!"
fi

echo "iTerm2 installation completed!"