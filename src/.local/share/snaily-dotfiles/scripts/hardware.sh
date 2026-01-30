#!/usr/bin/env bash

signal=$1 # takes input from waybar (lock, suspend, etc.)

init=$(command -v systemctl loginctl dinitctl)
locker=$(command -v swaylock gtklock waylock)

turnOffDisplayTimer=300

# lock the screen when locking, suspending, or hibernating
if [[ $signal == "lock" ]]; then
    if [[ $locker == "/usr/bin/swaylock" ]]; then
        swaylock -C ~/.config/swaylock/config
    fi

    if [[ $locker == "/usr/bin/gtklock" ]]; then
        gtklock
    fi

    if [[ $locker == "/usr/bin/waylock" ]]; then
        waylock -f
    fi

    pkill swayidle # pkill swayidle to avoid launching twice
    exec swayidle -w \
            timeout $turnOffDisplayTimer "swaymsg 'output * dpms off'" \
            resume "swaymsg 'output * dpms on'" \
            before-sleep "swaymsg 'output * dpms off'"
fi

# example output: /usr/bin/loginctl poweroff
exec $init $signal