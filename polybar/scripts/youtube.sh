#!/bin/bash

player=$(playerctl -l | grep -v "spotify" | head -n 1)

if [ -n "$player" ]; then
    status=$(playerctl -p "$player" status 2>/dev/null)
    
    if [ "$status" = "Playing" ] || [ "$status" = "Paused" ]; then
        [ "$status" = "Playing" ] && icon=" " || icon=" "
        
        title=$(playerctl -p "$player" metadata xesam:title)
        artist=$(playerctl -p "$player" metadata xesam:artist | paste -sd ", " -)

        if [ -n "$artist" ]; then
            echo "%{F#fb4934}󰗃 %{F-} $icon $title - $artist"
        else
            echo "%{F#fb4934}󰗃 %{F-} $icon $title"
        fi
    else
        echo ""
    fi
else
    echo ""
fi
