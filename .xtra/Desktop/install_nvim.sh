#!/bin/bash

# Build prerequisites
sudo apt-get install ninja-build gettext libtool-bin cmake g++ pkg-config unzip curl

# Cloning git
git clone https://github.com/neovim/neovim

# make install
rm -r build/
mkdir ~/nvim
cd neovim && git checkout stable && make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/nvim" CMAKE_BUILD_TYPE=RelWithDebInfo install

# export path to zshrc
# export PATH="$HOME/nvim/bin:$PATH"


