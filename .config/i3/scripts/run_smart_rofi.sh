#!/bin/bash

QUERY=$(rofi -dmenu -p "Ask/Search:")

if [ -n "$QUERY" ]; then
    ~/.config/rofi/smart_launcher.sh "$QUERY"
fi
