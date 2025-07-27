#!/bin/bash

# Rofi power menu script

# Options with icons (using nerd font icons)
shutdown="\uf011  Shutdown"
reboot="\uf2f1  Reboot"
lock="\uf023  Lock"
logout="\uf2f5  Logout"

chosen=$(echo -e "$shutdown\n$reboot\n$lock\n$logout" | rofi -dmenu -i -p "Power Menu" -theme "my-logout.rasi")

case $chosen in
    *"Shutdown"*)
        systemctl poweroff
        ;;
    *"Reboot"*)
        systemctl reboot
        ;;
    *"Lock"*)
        hyprlock
        ;;
    *"Logout"*)
        hyprctl dispatch exit
        ;;
esac
