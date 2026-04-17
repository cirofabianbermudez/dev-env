#!/usr/bin/env bash
set -e

echo "Installing development environment..."

echo "# Development Environment" >> ~/.bashrc

cd $HOME/.local/bin

# Install Neovim
wget https://github.com/neovim/neovim/releases/download/v0.12.1/nvim-linux-x86_64.tar.gz
tar -xzf nvim-linux-x86_64.tar.gz
mv nvim-linux-x86_64 nvim
rm -rf nvim-linux-x86_64.tar.gz 
echo "export PATH=\"\$HOME/.local/bin/nvim/bin:\$PATH\"" >> ~/.bashrc

# Install ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/15.1.0/ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz
tar -xzf ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz
mv ripgrep-15.1.0-x86_64-unknown-linux-musl ripgrep
rm -rf ripgrep-15.1.0-x86_64-unknown-linux-musl.tar.gz
echo "export PATH=\"\$HOME/.local/bin/ripgrep:\$PATH\"" >> ~/.bashrc

# Install fzf
wget https://github.com/junegunn/fzf/releases/download/v0.71.0/fzf-0.71.0-linux_amd64.tar.gz
tar -xzf fzf-0.71.0-linux_amd64.tar.gz
rm -rf fzf-0.71.0-linux_amd64.tar.gz

# Install fd
wget https://github.com/sharkdp/fd/releases/download/v10.4.2/fd-v10.4.2-x86_64-unknown-linux-gnu.tar.gz
tar -xzf fd-v10.4.2-x86_64-unknown-linux-gnu.tar.gz
mv fd-v10.4.2-x86_64-unknown-linux-gnu fd
rm -rf fd-v10.4.2-x86_64-unknown-linux-gnu.tar.gz
echo "export PATH=\"\$HOME/.local/bin/fd:\$PATH\"" >> ~/.bashrc

# Tree-sitter CLI
wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.26.8/tree-sitter-cli-linux-x64.zip
unzip tree-sitter-cli-linux-x64.zip
chmod +x tree-sitter
rm -rf tree-sitter-cli-linux-x64.zip

# Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Get Neovim configuration ($HOME/.local/share/nvim is where Neovim stores its data)
cd $HOME/.config
git clone https://github.com/cirofabianbermudez/nvim.git

# Load new PATH
source $HOME/.bashrc

echo "Setup complete!"
