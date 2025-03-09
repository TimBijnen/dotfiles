#!/bin/bash

echo "Installing developer tools..."

# Install Prisma
echo "Installing Prisma..."
npm install --global prisma
echo "Prisma installed successfully!"

# Install DevToys (not available for macOS via script; download from website)
echo "DevToys is not available for macOS via script. Please download it from the official website."

# Install Dapr
echo "Installing Dapr..."
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
echo "Dapr installed successfully!"

# Install Prettier and ESLint globally
echo "Installing Prettier and ESLint..."
npm install --global prettier eslint
echo "Prettier and ESLint installed successfully!"

# Install zoxide
echo "Installing zoxide..."
brew install zoxide
echo "zoxide installed successfully!"

echo "Developer tools installation completed!"