#!/bin/bash

# Fail on any command.
set -euxo pipefail

# Install ZSH
sudo apt install -y git-core zsh curl

# Install Oh My Zsh (Unattended mode)
RUNZSH=no CHSH=no UNATTENDED=yes sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
