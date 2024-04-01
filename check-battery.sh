#!/bin/bash
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
printf 'script started' | systemd-cat -t 'scripts/check-battery.sh' #write to log when script is called
BATTINFO=`acpi -b | grep 'Battery 0'`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | grep -P -o '[0-9]+(?=%)'` < 5 ]] ; then
    printf 'shutdown due to low battery' | systemd-cat -t 'scripts/check-battery.sh' #write to log when script is called
    /home/julien/scripts/shutdown.sh
elif [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | grep -P -o '[0-9]+(?=%)'` < 10 ]] ; then
    printf 'suspend due to low battery' | systemd-cat -t 'scripts/check-battery.sh' #write to log when script is called
    /home/julien/scripts/suspend.sh
elif [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | grep -P -o '[0-9]+(?=%)'` < 25 ]] ; then
        printf 'condition is true' | systemd-cat -t 'scripts/check-battery.sh' #write to log if condition is true
        DISPLAY=:0 /usr/bin/notify-send -u critical "WARNING" "$BATTINFO" -i "/usr/share/icons/Adwaita/16x16/devices/battery-10-custom.png"
fi
