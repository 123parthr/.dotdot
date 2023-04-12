#!/bin/bash
# install DroidSansMono Nerd Font --> u can choose another at: https://www.nerdfonts.com/font-downloads
echo "[-] Download fonts [-]"
echo "https://rubjo.github.io/victor-mono/VictorMonoAll.zip"
wget https://rubjo.github.io/victor-mono/VictorMonoAll.zip
unzip VictorMonoAll.zip -d ~/.local/share/fonts
rm VictorMonoAll.zip
cd ~/.local/share/fonts
rm -rf EOT OTF WOFF WOFF2 LICENSE.txt
fc-cache -fv
echo "done!"
