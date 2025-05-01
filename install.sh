#!/bin/bash

# Install essential tools
sudo apt update && sudo apt install -y zsh git curl wget fonts-powerline unzip

# Install Oh My Zsh
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

# Copy config files
cp .zshrc ~/
cp .p10k.zsh ~/
cp aliases.zsh ~/.aliases.zsh

# Auto-load aliases
if ! grep -q "source ~/.aliases.zsh" ~/.zshrc; then
  echo "source ~/.aliases.zsh" >> ~/.zshrc
fi

# Set default shell
chsh -s $(which zsh)

echo -e "\\n✅ Setup complete. Type 'zsh' or reopen terminal to activate."
