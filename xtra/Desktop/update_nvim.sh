#!/bin/bash

cd $HOME/suckless/neovim
git checkout master
git pull

# make install
rm -r build/
mkdir $HOME/nvim
cd $HOME/suckless/neovim && git checkout stable && make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/nvim" CMAKE_BUILD_TYPE=RelWithDebInfo install
