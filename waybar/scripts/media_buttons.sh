#!/bin/bash

ICON_PLAY="󰐊"       
ICON_PAUSE="󰏤"           

player=$(playerctl -l 2>/dev/null | head -n 1)

if [[ -z "$player" ]]; then
    echo '{"text": "'"$ICON_PLAY"'", "tooltip": "No media active"}'
    exit 0
fi

status=$(playerctl status 2>/dev/null)

if [[ "$status" == "Playing" ]]; then
    state_icon="$ICON_PAUSE"
elif [[ "$status" == "Paused" ]]; then
    state_icon="$ICON_PLAY"
else
    state_icon="$ICON_PLAY"
fi

artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)
album=$(playerctl metadata album 2>/dev/null)

position_sec=$(playerctl position 2>/dev/null | cut -d'.' -f1)

length_micro=$(playerctl metadata mpris:length 2>/dev/null)
length_sec=$((length_micro / 1000000))

format_time() {
    local t=$1
    printf "%02d:%02d" $((t / 60)) $((t % 60))
}

pos_fmt=$(format_time "$position_sec")
len_fmt=$(format_time "$length_sec")

tooltip="$title\n$album\n$artist\n$pos_fmt / $len_fmt"

echo '{"text": "'"$state_icon"'", "tooltip": "'"$tooltip"'"}'
