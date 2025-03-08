#!/bin/bash

echo "Installing Storybook CLI..."

if ! command -v npx &> /dev/null; then
    echo "Node.js is required. Please install Node.js first."
    exit 1
fi

npx -y sb init
echo "Storybook CLI installed successfully!"
