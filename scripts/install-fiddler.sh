#!/bin/bash

echo "Installing Fiddler..."

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    wget https://telerik-fiddler.s3.amazonaws.com/fiddler-everywhere/fiddler-everywhere-latest-linux.AppImage -O fiddler.AppImage
    chmod +x fiddler.AppImage
    sudo mv fiddler.AppImage /usr/local/bin/fiddler
    echo "Fiddler installed successfully! Run it by typing 'fiddler'."
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask fiddler
    echo "Fiddler installed successfully!"
else
    echo "Unsupported operating system for Fiddler installation."
fi

echo "Fiddler installation completed!"