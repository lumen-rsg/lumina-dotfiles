#!/bin/bash
# Lumina Shortcuts Helper

# Define the shortcuts list
read -r -d '' keybinds << EOM
SUPER + Enter       | Launch Terminal
SUPER + Space       | Launch Application Menu
SUPER + C           | Close Window
SUPER + V           | Toggle Floating
SUPER + F           | Toggle Fullscreen
SUPER + M           | Exit Hyprland
SUPER + Shift + S   | Screenshot (Region)
Print Screen        | Screenshot (Full)
SUPER +       | Switch to Workspace
SUPER + Shift+ | Move Window to Workspace
SUPER + Arrows      | Move Focus
EOM

# Format and pass to Rofi
echo "$keybinds" | column -t -s '|' | rofi -dmenu -i -p "Shortcuts" -theme-str 'window {width: 600px;} listview {lines: 12;}'