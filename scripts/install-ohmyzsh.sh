# Install Oh My Zsh
echo "Installing Oh My Zsh..."
if ! command -v zsh &> /dev/null; then
    echo "Zsh is not installed. Installing Zsh..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install zsh
    elif [[ -f "/etc/os-release" && "$(grep '^ID=' /etc/os-release)" == *"ubuntu"* ]]; then
        sudo apt update && sudo apt install zsh -y
    else
        echo "Unsupported OS for automatic Zsh installation."
    fi
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh is already installed!"
fi

# Install Powerlevel10k
echo "Installing Powerlevel10k..."
if [ ! -d "$HOME/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k
    echo "Setting ZSH_THEME to 'powerlevel10k/powerlevel10k' in .zshrc..."
    sed -i.bak 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' $HOME/.zshrc
else
    echo "Powerlevel10k is already installed!"
fi

# Source .zshrc to apply changes (optional, depending on setup)
echo "Applying changes to shell..."
source $HOME/.zshrc
