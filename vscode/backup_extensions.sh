#!/bin/bash

# Backup list of extensions
rm /home/$USER/.dotdot/vscode/extensions.txt
code --list-extensions >> /home/$USER/.dotdot/vscode/extensions.txt

# backup settings
# cp /home/$USER/.config/Code/User/settings.json /home/$USER/.dotdot/vscode/.config/Code/User/settings.json

# backup extensions 
# cp /home/$USER/.vscode/extensions/extensions.json /home/$USER/.dotdot/vscode/.vscode/extensions/extensions.json
