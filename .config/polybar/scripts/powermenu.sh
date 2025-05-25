#!/bin/bash

# Simple Rofi Powermenu

options=" Shutdown\n Reboot\n Lock\n Logout\n Suspend"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power" -i -theme-str 'window {width: 20%;} listview {lines: 5;}')

case "$chosen" in
    " Shutdown")
        systemctl poweroff
        ;;
    " Reboot")
        systemctl reboot
        ;;
    " Lock")
        # Replace with your preferred screen locker, e.g., i3lock, betterlockscreen, physlock
        i3lock -c 000000 
        ;;
    " Logout")
        # For i3:
        i3-msg exit
        # For bspwm:
        # bspc quit
        # For other WMs/DEs, use their specific logout command
        ;;
    " Suspend")
        systemctl suspend
        ;;
esac
