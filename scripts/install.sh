#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

echo "Starting setup..."

# Update package manager
sudo apt-get update

# Install tools
sudo apt-get install -y xclip tmux

# Run IDE setup
bash "$SCRIPT_DIR/install_ide.sh"

echo "IDE setup complete!"
