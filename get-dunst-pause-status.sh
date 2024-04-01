#!/bin/bash
status=$(dunstctl is-paused)
#echo $status
if [[ $(dunstctl is-paused) == true ]] ; then
    echo 'ON'
else
    echo 'OFF'
fi

