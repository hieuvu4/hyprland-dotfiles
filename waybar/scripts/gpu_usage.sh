#!/bin/bash

usage=$(cat /sys/class/drm/card1/device/gpu_busy_percent 2>/dev/null)
if [ -z "$usage" ]; then
  echo "N/A"
else
  echo "$usage%"
fi
