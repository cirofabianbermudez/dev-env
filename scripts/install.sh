#!/usr/bin/env bash
set -e

echo "Starting setup..."

# Update package manager
sudo apt-get update

# Install tools
sudo apt-get install -y ripgrep fd-find xclip bat fzf neovim tmux

# Create aliases for tools with different command names
#ln -sf /usr/bin/rg /usr/local/bin/ripgrep 2>/dev/null || true
#ln -sf /usr/bin/fdfind /usr/local/bin/fd 2>/dev/null || true
#ln -sf /usr/bin/batcat /usr/local/bin/bat 2>/dev/null || true

echo "Setup complete!"
