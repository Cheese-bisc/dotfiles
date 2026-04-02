#!/bin/bash

status=$(playerctl status 2>/dev/null)
player=$(playerctl metadata --format '{{playerName}}' 2>/dev/null)

# Choose icon based on player
case "$player" in
    spotify)
        icon=""   # Spotify icon (Nerd Font)
        ;;
    mpd|mpv)
        icon=""   # Generic music / MPD
        ;;
    firefox|chromium|brave)
        icon=""   # Browser
        ;;
    *)
        icon=""   # Fallback
        ;;
esac

case "$status" in
    Playing)
        playerctl metadata --format "$icon  {{artist}} - {{title}}"
        ;;
    Paused)
        playerctl metadata --format "  $icon  {{artist}} - {{title}}"
        ;;
    *)
        echo ""
        ;;
esac
