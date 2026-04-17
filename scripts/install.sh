#!/usr/bin/env bash
set -e

echo "Starting setup..."

# Update package manager
apt-get update

# Install tools
apt-get install -y ripgrep fd-find xclip bat fzf neovim tmux

echo "Setup complete!"
