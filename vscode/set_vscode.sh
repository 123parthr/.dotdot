#!/bin/bash

cat /home/$USER/.dotdot/vscode/.vscode/extensions/extensions.txt | xargs -n 1 code --install-extension

