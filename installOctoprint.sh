#!/bin/bash

mkdir /home/piprint/OctoPrint
cp octoprint.service /home/piprint/OctoPrint/octoprint.service
sudo apt update
sudo apt upgrade
sudo apt install python3-pip python3-dev python3-setuptools python3-venv git libyaml-dev build-essential
cd /home/piprint/OctoPrint
python3 -m venv venv
source venv/bin/activate
pip install pip --upgrade
pip install octoprint
sudo usermod -a -G tty piprint
sudo usermod -a -G dialout piprint

sudo cp octoprint.service /etc/systemd/system/octoprint.service
ExecStart=/home/piprint/OctoPrint/venv/bin/octoprint
sudo systemctl enable octoprint.service
sudo reboot
