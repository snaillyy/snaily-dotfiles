#!/usr/bin/env bash
# my attempt at hardware signals..
# todo: attempt generalization by checking if using other screen lockers

# signal takes input from waybar (lock, suspend, etc.)
signal=$1
init=$(command -v systemctl loginctl dinitctl)
screenLock=$(command -v swaylock)

# lock the screen when locking, suspending, or hibernating
if [ $signal == "lock" ]; then
    swaylock -C ~/.config/swaylock/config

    pkill swayidle
    exec swayidle -w \
            timeout 300 "swaymsg 'output * dpms off'" \
            resume "swaymsg 'output * dpms on'" \
            before-sleep "swaymsg 'output * dpms off'" \
            after-resume "pkill swayidle" # idk why this part doesn't work
elif [ $signal == "suspend" ] || [ $signal == "hibernate" ]; then
    # no idea if swayidle should be used here
    swaylock -C ~/.config/swaylock/config
fi

# example output: /usr/bin/loginctl poweroff
exec $init $signal