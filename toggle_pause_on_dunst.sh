#!/bin/bash
if [[ $(dunstctl is-paused) == true ]] ; then
    dunstctl set-paused false
    notify-send -t 3000 -u low "DO NOT DISTURB" "mode deactivated" -i "/home/julien/.local/share/icons/do-not-disturb-OFF.png"
else
    notify-send -t 3000 -u low "DO NOT DISTURB" "mode activated" -i "/home/julien/.local/share/icons/do-not-disturb-ON.png"
    sleep 3
    dunstctl set-paused true
fi
exit 0
