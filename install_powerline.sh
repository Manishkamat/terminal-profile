#!/bin/bash

# Fail on any command. (-o pipefail is the correct syntax)
set -euxo pipefail

# Install Powerline and Powerline fonts via apt.
sudo apt install -y powerline fonts-powerline

# Copy VIM configuration. 
# (Removed 'sudo' so the file is correctly owned by you, not root).
cp configs/.vimrc ~/.vimrc

# Install Patched Fonts.
# (Added '-p' so the script doesn't crash if the folder already exists).
mkdir -p ~/.fonts

# Copy fonts.
# (Removed 'sudo' so the font files are owned by you, not root).
cp -a fonts/. ~/.fonts/

# Update the font cache.
fc-cache -vf ~/.fonts/
