#!/bin/sh
feh --bg-scale --random ~/dotfiles/Wallpapers/*
picom & disown # --experimental-backends --vsync should prevent screen tearing on most setups if needed
xss-lock slock & 
xset 600
# Low battery notifier
~/.config/qtile/scripts/check_battery.sh & disown

# Start welcome
eos-welcome & disown

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & disown # start polkit agent from GNOME
