#!/bin/bash
# A simple script to show weather information
# on Waybar, based on user's IP

CITY=$(curl -s https://ipinfo.io/city)
WEATHER=$(curl -s "wttr.in/${CITY}?format=%t%c\n")

# Clean output
echo "$WEATHER" | sed 's/+//g; s/C/C /g; s/ //g'

