#!/bin/bash

# copy layout files
sudo cp g g-hjkl-like-vi /usr/share/X11/xkb/symbols/

# copy evdev.xml
sudo cp evdev.xml /usr/share/X11/xkb/rules/

# copy .Xmodmap (consider copying it to .config/mescripts)
mkdir -p ~/.config/mescripts
cp .Xmodmap ~/.config/mescripts/

# make xmodmap and xset run on start-up (for pop-os Cosmic)
mkdir -p ~/.config/autostart
cp xmodmap.desktop xset.desktop ~/.config/autostart/

# copy a.sh file to somewhere with alias in zshrc
cp a.sh ~/.config/mescripts

# set prefered keyboard layout
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'g'),('xkb', 'us')]"
gdbus call --session --dest org.gnome.Shell \
    --object-path /org/gnome/Shell \
    --method org.gnome.Shell.Eval \
    "imports.ui.status.keyboard.getInputSourceManager().inputSources[0].activate()"

# run a.sh
~/.config/mescripts/a.sh
