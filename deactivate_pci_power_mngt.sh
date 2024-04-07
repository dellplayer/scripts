#!/bin/bash

#lspci | grep 7900
# command pour avoir le port pci de la carte graphique

#lspci | grep I225
# command pour avoir le port pci de la carte ethernet

#graphic card
echo 'on' > /sys/bus/pci/devices/0000:03:00.0/power/control

#ethernet card
echo 'on' > /sys/bus/pci/devices/0000:0c:00.0/power/control

#on Desktop computer
#install cronie
#systemctl enable and start conie
#sudo su
#crontab -e
#@reboot /home/julien/scripts/deactivate_pci_power_mngt.sh

exit 0
