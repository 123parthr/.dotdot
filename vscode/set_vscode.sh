#!/bin/bash

cat /home/$USER/.dotdot/vscode/extensions.txt | xargs -n 1 code --install-extension

# remove settings
rm /home/$USER/.config/Code/User/settings.json

# remove keybindings

# stow vscode

cd /home/$USER/.dotdot/
stow vscode
