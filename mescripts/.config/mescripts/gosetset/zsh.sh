#!/bin/sh

### 1 set zsh
# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells
# use zsh as default shell
sudo chsh -s $(which zsh) $USER

