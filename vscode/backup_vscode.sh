#!/bin/bash

rm /home/$USER/.dotdot/vscode/.vscode/extensions/extensions.txt
code --list-extensions >> /home/$USER/.dotdot/vscode/.vscode/extensions/extensions.txt
