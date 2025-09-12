#!/bin/bash

STATUS_FILE="$HOME/.states/.bluetooth_toggle"

if [ ! -f "$STATUS_FILE" ]; then
    echo "on" > "$STATUS_FILE"
fi

LAST=$(cat "$STATUS_FILE")

if [ "$LAST" = "on" ]; then
    rfkill unblock bluetooth
    echo "off" > "$STATUS_FILE"
else
    rfkill block bluetooth
    echo "on" > "$STATUS_FILE"
fi