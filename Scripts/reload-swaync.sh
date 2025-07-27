#!/bin/bash

# Path to swaync config and style
CONFIG="$HOME/.config/swaync/config.json"
STYLE="$HOME/.config/swaync/style.css"

# Kill existing swaync
pkill swaync

# Wait briefly to ensure it's killed
sleep 0.3

# Restart with config and style
swaync --config "$CONFIG" --style "$STYLE" &
