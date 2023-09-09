#!/bin/bash

sudo apt-get update

sudo apt-get install ripgrep

sudo apt-get install nodejs npm

# Install packer for neovim
if [ ! -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
	git clone --depth 1 https://github.com/wbthomason/packer.nvim \
		~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
	echo "packer.nvim already installed"
fi;

mkdir -p ~/.config/nvim

cp -R init.lua lua/* ~/.config/nvim

cp -R after ~/.config/nvim

mkdir -p ~/.config/nvim/lua/plugins

cp nvimtree-fix.lua ~/.config/nvim/lua/plugins

