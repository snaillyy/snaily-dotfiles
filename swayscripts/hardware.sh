#!/usr/bin/env bash
# this small script uses one of the commands in $init for hardware signals

operation=$1

if [ $operation == "lock" ]; then
    # needed to set a delay, otherwise drawer module gets stuck for some reason
    sleep 0.25
    exec swaylock -f -C ~/.config/swaylock/config
fi

# output example:
# /usr/bin/loginctl shutdown
init=$(command -v systemctl loginctl dinitctl)
exec $init $operation