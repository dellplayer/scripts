#!/bin/bash

#lspci | grep 7900
# command pour avoir le port pci de la carte graphique

#lspci | grep I225
# command pour avoir le port pci de la carte ethernet

#graphic card
echo 'on' > /sys/bus/pci/devices/0000:03:00.0/power/control

#ethernet card
echo 'on' > /sys/bus/pci/devices/0000:0c:00.0/power/control

exit 0
