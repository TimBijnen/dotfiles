#!/bin/bash

# Run all installation scripts
echo "Starting installation..."

# Run scripts one by one
bash scripts/install-brew.sh
bash scripts/install-node.sh
bash scripts/install-vscode.sh
bash scripts/install-chrome.sh

bash scripts/install-iterm.sh
bash scripts/install-ohmyzsh.sh
bash scripts/install-docker.sh
bash scripts/install-dotnet-sdk.sh
bash scripts/install-ollama.sh
bash scripts/install-postman.sh
bash scripts/install-storybook.sh
bash scripts/install-fiddler.sh
bash scripts/install-browser-tools.sh
bash scripts/install-devtools.sh
bash scripts/install-sourcetree.sh
bash scripts/install-spotify.sh

bash scripts/set-keyrepeat.sh

echo "Installation process completed!"

