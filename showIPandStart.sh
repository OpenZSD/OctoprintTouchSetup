#!/bin/bash

MY_IP=$(python3 getIP.py)
RESULT=$?
if [ $RESULT -eq 0 ]; then
    prerunPrompt -m "Connect with ${MY_IP}:5000" -c "./startui.sh" -t 10
else
    prerunPrompt -m "No network connection" -c "./startui.sh" -t 10
fi
