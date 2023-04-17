#!/bin/bash

# Backup list of extensions
rm /home/$USER/.dotdot/mescripts/.config/mescripts/vscode/extensions.txt
code --list-extensions >> /home/$USER/.dotdot/mescripts/.config/mescripts/vscode/extensions.txt

# backup settings update directory address
# cp /home/$USER/.config/Code/User/settings.json /home/$USER/.dotdot/vscode/.config/Code/User/settings.json

# backup extensions update directory address
# cp /home/$USER/.vscode/extensions/extensions.json /home/$USER/.dotdot/vscode/.vscode/extensions/extensions.json
