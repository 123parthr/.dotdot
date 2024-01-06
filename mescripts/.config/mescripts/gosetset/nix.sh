#!/bin/bash

cd $HOME

# install nix package manager locally
curl -L https://nixos.org/nix/install | sh

# source nix
. $HOME/.nix-profile/etc/profile.d/nix.sh

# append lines for sourcing nix to bashrc
echo -e '\nif [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer' >> $HOME/.bashrc

# source bashrc
source $HOME/.bashrc

nix-env -iA \
        nixpkgs.zsh \
        nixpkgs.lf \
        nixpkgs.stow \
        nixpkgs.neovim
