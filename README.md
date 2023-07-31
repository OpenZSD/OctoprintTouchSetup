<h1 style="color: #006cff; font-size: 50px;"><img style="margin-bottom: -15px;" src="doc_files/logoSolid.png" width="70"/> SOFT DEVELOPMENT </h1>

# Octoprint Touch Setup
A set of scripts to streamline setup octoprint on a touch screen mounted raspberry pi.
On startup, a screen will show the ip address before starting the control UI.

## Prerequisites
These scripts assumes an installation Raspberry Pi OS with a user of piprint with sudo rights. If the username is different, go through the scripts/files and revise it accordingly.

## File setup
Copy the files of this repository in a folder named print under the home folder (/home/piprint/print).

Next ensure all scripts are executable (chmod 775 *.sh)

## Installing Software
1. Install pre-run prompt 
  1. This produces a prompt inform the user of the printer's IP address before starting.
  2. Install package: `sudo pip3 install PrerunPrompt-1.0.0-py3-none-any.whl`
  3. In a new terminal run `setupPrerunPrompt` to setup prerunPrompt.
2. Install octoprint
  1. Run `./installOctoprint.sh` (NOTE: this will reboot the system)
  2. Run './addToAutoStart.sh' so it auto start (NOTE: this will reboot the system)
3. Install TouchUI
  1. Under Plugin Manager search for TouchUI and install it. This will require you to reboot to take effect.
  2. TouchUI can be disabled or enabled from the corner right. When disabled, this option can be accessed by the smartphone icon and when enabled it is a sub-menu option in the hamburger menu in the uper right.

## Other files
Contained is a folder called `old_scripts` these are no longer used, but may be of use with older hardware/software.

## Exiting back to desktop 
Controls are shown through chromium browser in kiosk mode, just prest alt-f4 to exit.
