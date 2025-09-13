#!/bin/bash

STATUS_FILE="$HOME/.waybar_states/.wifi_toggle"

if [ ! -f "$STATUS_FILE" ]; then
    echo "on" > "$STATUS_FILE"
fi

LAST=$(cat "$STATUS_FILE")

if [ "$LAST" = "on" ]; then
    rfkill unblock wifi
    echo "off" > "$STATUS_FILE"
else
    rfkill block wifi
    echo "on" > "$STATUS_FILE"
fi