#!/bin/bash

case "$1" in
    get)
        brightnessctl -m | cut -d, -f4 | tr -d '%'
        ;;
    inc)
        brightnessctl set +5%
        ;;
    dec)
        brightnessctl set 5%-
        ;;
esac
