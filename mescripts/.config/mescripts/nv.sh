#!/bin/sh

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage

sudo chmod u+x nvim.appimage

./nvim.appimage --appimage-extract

mkdir -p /home/$USER/.local/bin/squashfs-root

rm -r /home/$USER/.local/bin/squashfs-root

cp -r squashfs-root /home/$USER/.local/bin

rm -r squashfs-root

rm nvim.appimage
