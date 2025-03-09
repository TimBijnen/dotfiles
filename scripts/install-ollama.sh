#!/bin/bash

# Install Ollama
echo "Installing Ollama..."

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS installation
    if ! command -v ollama &> /dev/null; then
        curl -fsSL https://ollama.com/install.sh | sh
        echo "Ollama installed successfully!"
    else
        echo "Ollama is already installed!"
    fi
else
    echo "This script is intended for macOS only."
fi

echo "Ollama installation completed!"

# Install all available LLMs
echo "Installing all available Ollama LLMs..."
models=(
    "llama3.3"
    "deepseek-r1"
    # "phi4"
    # "gemma2"
    # "mistral"
    # "codellama"
    # "llava"
    # "solar"
)

for model in "${models[@]}"; do
    echo "Downloading model: $model..."
    ollama pull "$model"
done

echo "All models installed successfully!"