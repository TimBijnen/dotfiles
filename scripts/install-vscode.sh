# Install Visual Studio Code (this example is for Linux; adjust for macOS/Windows)
echo "Installing Visual Studio Code..."
if ! command -v code &> /dev/null; then
    curl -fsSL https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -o vscode.deb
    sudo apt install ./vscode.deb -y
    rm vscode.deb
else
    echo "Visual Studio Code is already installed!"
fi
echo "Visual Studio Code installation completed!"

EXTENSIONS_FILE="vscode-extensions-list.txt"

echo "Installing VS Code Extensions from $EXTENSIONS_FILE..."
if [[ -f "$EXTENSIONS_FILE" ]]; then
    while IFS= read -r extension; do
        code --install-extension "$extension"
    done < "$EXTENSIONS_FILE"
else
    echo "Extensions file '$EXTENSIONS_FILE' not found. Please ensure it exists in the current directory."
fi
echo "VS Code Extensions installation completed!"

# Restore VS Code settings
SETTINGS_FILE="vscode/settings.json"
TARGET_DIR=""

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    TARGET_DIR="$HOME/.config/Code/User/"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    TARGET_DIR="$HOME/Library/Application Support/Code/User/"
elif [[ "$OSTYPE" == "msys"* || "$OSTYPE" == "cygwin"* ]]; then
    TARGET_DIR="$APPDATA/Code/User/"
fi

if [[ -n "$TARGET_DIR" && -f "$SETTINGS_FILE" ]]; then
    echo "Restoring VS Code settings to $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
    cp "$SETTINGS_FILE" "$TARGET_DIR"
else
    echo "Could not restore settings. Ensure $SETTINGS_FILE exists and TARGET_DIR is set correctly."
fi
echo "VS Code settings restored!"

