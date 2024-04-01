#!/bin/bash
notify-send -t 5000 -u low "DO NOT DISTURB" "mode activated" -i "/home/julien/.local/share/icons/do-not-disturb-ON.png"
sleep 5
dunstctl set-paused true
dunstctl is-paused
exit 0
