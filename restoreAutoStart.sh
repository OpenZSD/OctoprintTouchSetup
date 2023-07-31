#!/bin/bash

sudo chmod 777 /etc/xdg/lxsession/LXDE-pi/autostart
cp autostart.back /etc/xdg/lxsession/LXDE-pi/autostart 
sudo chmod 774 /etc/xdg/lxsession/LXDE-pi/autostart
