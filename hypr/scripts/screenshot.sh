#!/bin/bash
# Lumina Screenshot Tool

if; then
    grim -g "$(slurp)" - | wl-copy
    notify-send -a "Screenshot" -u low "Region Captured" "Image copied to clipboard."
elif; then
    grim - | wl-copy
    notify-send -a "Screenshot" -u low "Screen Captured" "Image copied to clipboard."
else
    echo "Usage: $0"
fi