#!/usr/bin/env bash
# Fuzzel stays focused      --no-exit-on-keyboard-focus-loss
# this is to launch it in the center instead of top right, the one outside is for waybar
if [ $1 == "shortcut" ]; then
    exec fuzzel --config ~/.config/fuzzel/fuzzel.ini -a center
fi

exec fuzzel --config ~/.config/fuzzel/fuzzel.ini -a top-right