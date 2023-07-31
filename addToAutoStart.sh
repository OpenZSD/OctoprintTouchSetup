#!/bin/bash

sudo chmod 777 /etc/xdg/lxsession/LXDE-pi/autostart
EPOCH_S=$(date +%s)
cp /etc/xdg/lxsession/LXDE-pi/autostart autostart.back
cp /etc/xdg/lxsession/LXDE-pi/autostart autostart.back.${EPOCH_S}
sudo printf "\n\n$PWD/mainUiStart.sh\n" >> /etc/xdg/lxsession/LXDE-pi/autostart
sudo chmod 774 /etc/xdg/lxsession/LXDE-pi/autostart
sudo reboot
