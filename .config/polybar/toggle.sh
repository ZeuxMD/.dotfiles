#!/bin/bash

if pgrep -x "polybar" > /dev/null; then
    killall -q polybar
else
    polybar --config=~/.config/polybar/config.ini toph &
fi
