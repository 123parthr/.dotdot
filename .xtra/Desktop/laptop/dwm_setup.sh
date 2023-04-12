#!/bin/bash

sudo apt update
sudo apt install libx11-dev libxinerama-dev libxft-dev
sudo apt install feh unclutter redshift

cd ~/suckless/dwm

sudo make clean install
sudo cp ~/tp_configs/dwm_conf/dwmstart /usr/local/bin/
sudo cp ~/tp_configs/dwm_conf/dwm.desktop /usr/share/xsessions/
