#!/bin/bash

echo "Installing browser testing tools..."

# Install Playwright
echo "Installing Playwright..."
npm install --global playwright
echo "Playwright installed successfully!"

# Install BrowserStack Local Testing (optional)
echo "Installing BrowserStack Local..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    curl -fsSL https://www.browserstack.com/local-testing/downloads --output BrowserStackLocal
    chmod +x BrowserStackLocal
    sudo mv BrowserStackLocal /usr/local/bin/
    echo "BrowserStack Local installed successfully!"
fi

echo "Browser testing tools installation completed!"