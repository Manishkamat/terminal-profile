#!/usr/bin/env bash
# Fail on any command
set -euxo pipefail

echo "🔹 Installing Powerline for VIM and terminal..."

# Install Powerline from apt (no pip needed)
sudo apt update
sudo apt install -y python3-powerline fonts-powerline

# Copy VIM config
cp configs/.vimrc ~/.vimrc

# Install patched fonts
mkdir -p ~/.fonts
cp -a fonts/. ~/.fonts/

# Refresh font cache
fc-cache -vf ~/.fonts/

echo "✅ Powerline installation complete."


# paste this in zshrc
# if [ -f /usr/share/powerline/bindings/zsh/powerline.zsh ]; then
#     source /usr/share/powerline/bindings/zsh/powerline.zsh
# fi
