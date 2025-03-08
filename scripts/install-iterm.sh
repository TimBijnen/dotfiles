# Install iTerm2 (macOS only)
echo "Installing iTerm2..."
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask iterm2
else
    echo "iTerm2 is only available on macOS!"
fi