#!/bin/bash

status=$(playerctl -p spotify status 2>/dev/null)

if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
    if [ "$status" = "Playing" ]; then
        icon=" "
    else
        icon=" "    
    fi

    artists=$(playerctl -p spotify metadata xesam:artist | paste -sd ", " -)
    title=$(playerctl -p spotify metadata xesam:title)
    echo "$icon $title - $artists"
else
    echo ""
fi
