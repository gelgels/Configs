#!/bin/bash

SSID=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk -F': ' '/ SSID/ {print $2}')

if [[ "$SSID" == *UCLA* ]]
  then
    echo "Connected to a UCLA network. Killing Transmission."
    killall Transmission
fi

if [[ "$SSID" == *Bulls* ]]
  then
    echo "Connected to home network."
fi
