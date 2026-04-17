#!/usr/bin/env bash
set -e

echo "Installing utilities..."

echo "# Utilities" >> ~/.bashrc

cd $HOME/.local/bin

# Install Neovim
sudo apt-get install -y gnuplot
sudo apt-get install -y pdftk ghostscript imagemagick

echo "Utilities setup complete!"
