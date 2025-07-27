#!/bin/bash

selected=$(cliphist list | sed 's/^[0-9]*\t//' | rofi -dmenu -p "Clipboard:" -lines 8 -width 600 -theme ~/.local/share/rofi/themes/myclip.rasi 'window {width: 600px;} listview {lines: 8;}')

if [ -n "$selected" ]; then
    cliphist list | grep -F "$selected" | head -n1 | cliphist decode | wl-copy
fi
