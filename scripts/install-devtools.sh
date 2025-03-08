#!/bin/bash

echo "Installing developer tools..."

# Install Prisma
echo "Installing Prisma..."
npm install --global prisma
echo "Prisma installed successfully!"

# Install DevToys (Linux only; for Windows/macOS, download from website)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing DevToys..."
    sudo snap install devtoys --edge
    echo "DevToys installed successfully!"
fi

# Install Dapr
echo "Installing Dapr..."
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
echo "Dapr installed successfully!"

# Install Prettier and ESLint globally
echo "Installing Prettier and ESLint..."
npm install --global prettier eslint
echo "Prettier and ESLint installed successfully!"

brew install zoxide
echo "Developer tools installation completed!"