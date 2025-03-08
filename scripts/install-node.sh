#!/bin/bash

echo "Installing Node.js and npm..."

if ! command -v node &> /dev/null; then
    curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
    sudo apt install -y nodejs
    echo "Node.js and npm installed successfully!"
else
    echo "Node.js is already installed!"
fi

echo "Installing Yarn..."
if ! command -v yarn &> /dev/null; then
    npm install --global yarn
    echo "Yarn installed successfully!"
else
    echo "Yarn is already installed!"
fi

echo "Node.js and Yarn installation completed!"

npm install -g typescript
echo "Typescript installed successfully!"

npm install --global cypress
echo "Cypress installed successfully!"

npm install --global vitest
echo "Vitest installed successfully!"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
echo "NVM installed successfully!"

# npm install --global husky
# echo "Husky installed successfully!"

# npm install --global @commitlint/cli @commitlint/config-conventional
# echo "Commitlint installed successfully!"

# npm install -g pnpm
# echo "Pnpm installed successfully!"

# brew install lazygit
# echo "Lazygit installed successfully!"