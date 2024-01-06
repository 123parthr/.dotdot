#!/bin/sh

# 1 cp relevent sys kb files
# for kb layout
sudo cp $HOME/.dotdot/mescripts/.config/mescripts/gosetset/kb/g /usr/share/X11/xkb/symbols/
sudo cp $HOME/.dotdot/mescripts/.config/mescripts/gosetset/kb/g-hjkl-like-vi /usr/share/X11/xkb/symbols/
# for kb list
sudo cp $HOME/.dotdot/mescripts/.config/mescripts/gosetset/kb/evdev.xml /usr/share/X11/xkb/rules/

# 2 cp startup scripts
# mkdir -p $HOME/.config/autostart/

######
# cp -p $HOME/.dotdot/mescripts/.config/mescripts/gosetset/kb/xmodmap.desktop $HOME/.dotdot/mescripts/.config/mescripts/gosetset/kb/xset.desktop $HOME/.config/autostart/

##### stow autorstart

# set two kbs and select a default 'g'
gsettings set org.gnome.desktop.input-sources sources "[('"xkb"','"g"'),('"xkb"','"us"')]"
gsettings set org.gnome.desktop.input-sources current 1
setxkbmap -layout g
# load xmodmap and xset
/usr/bin/xmodmap $HOME/.dotdot/mescripts/.config/mescripts/.Xmodmap
xset r rate 300 45 r 66

# set mouse single click
gsettings set org.gnome.nautilus.preferences click-policy 'single'

# set natural scrolling on for laptop
# gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

# to check current settings
# gsettings list-recursively org.gnome.shell.extensions.dash-to-dock
# set dock
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position LEFT
gsettings set org.gnome.shell.extensions.dash-to-dock dock-alignment CENTER
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode ALL_WINDOWS
