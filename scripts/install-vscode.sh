echo "Installing Visual Studio Code..."
if ! command -v code &> /dev/null; then
    brew install --cask visual-studio-code
else
    echo "Visual Studio Code is already installed!"
fi
echo "Visual Studio Code installation completed!"

EXTENSIONS_FILE="scripts/vscode-extensions-list.txt"

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
SETTINGS_FILE="scripts/vscode-settings.json"
KEYBINDINGS_FILE="scripts/vscode-keybindings.json"
TARGET_DIR="$HOME/Library/Application Support/Code/User/"

if [[ -f "$SETTINGS_FILE" ]]; then
    echo "Restoring VS Code settings to $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
    cp "$SETTINGS_FILE" "$TARGET_DIR"
else
    echo "Could not restore settings. Ensure $SETTINGS_FILE exists."
fi

# Restore VS Code keybindings
if [[ -f "$KEYBINDINGS_FILE" ]]; then
    echo "Restoring VS Code keybindings to $TARGET_DIR..."
    cp "$KEYBINDINGS_FILE" "$TARGET_DIR"
else
    echo "Could not restore keybindings. Ensure $KEYBINDINGS_FILE exists."
fi

echo "VS Code settings and keybindings restored!"