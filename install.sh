#/bin/bash

# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. /home/p/.nix-profile/etc/profile.d/nix.sh

# install packages
nix-env -iA \
    nixpkgs.bat \
    nixpkgs.stow \
    nixpkgs.lf \
    nixpkgs.zsh

# stow
stow zsh
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as your default shell
sudo chsh -s $(which zsh) $USER
