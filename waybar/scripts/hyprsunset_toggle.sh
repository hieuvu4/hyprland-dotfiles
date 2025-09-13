#!/bin/bash

STATUS_FILE="$HOME/.waybar_states/.hyprsunset_toggle"

if [ ! -f "$STATUS_FILE" ]; then
    echo "identity" > "$STATUS_FILE"
fi

LAST=$(cat "$STATUS_FILE")

if [ "$LAST" = "identity" ]; then
    hyprctl hyprsunset temperature 3500
    echo "temperature" > "$STATUS_FILE"
else
    hyprctl hyprsunset identity
    echo "identity" > "$STATUS_FILE"
fi