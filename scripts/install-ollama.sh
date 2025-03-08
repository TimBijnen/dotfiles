#!/bin/bash

# Install Ollama
echo "Installing Ollama..."

if [[ "$OSTYPE" == "linux-gnu"* || "$OSTYPE" == "darwin"* ]]; then
    # macOS or Linux installation
    if ! command -v ollama &> /dev/null; then
        curl -fsSL https://ollama.com/install.sh | sh
        echo "Ollama installed successfully!"
    else
        echo "Ollama is already installed!"
    fi
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
    # Windows installation notice
    echo "Please download and install Ollama manually for Windows from https://ollama.com/download/windows."
else
    echo "Unsupported operating system for Ollama installation."
fi
echo "Ollama installation completed!"s

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
