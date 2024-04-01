#!/bin/bash
dunstctl set-paused false
notify-send -t 5000 -u low "DO NOT DISTURB" "mode deactivated" -i "/home/julien/.local/share/icons/do-not-disturb-OFF.png"
dunstctl is-paused
exit 0
