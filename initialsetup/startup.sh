#!/bin/bash

cp .Xmodmap ~/

mkdir ~/.config/autostart/

cp xmodmap.desktop ~/.config/autostart/

cp xset.desktop ~/.config/autostart/

cp com.system76.PopUpgrade.Notify.desktop ~/.config/autostart/

cp redshift.desktop ~/.config/autostart/

cp unclutter.desktop ~/.config/autostart/

sudo systemctl --message="Autostart scripts copied" reboot
