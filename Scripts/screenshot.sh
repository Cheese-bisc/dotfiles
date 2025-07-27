#!/bin/bash

SAVE_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SAVE_DIR"

# Let hyprshot save into the main screenshot directory
hyprshot -m region -o "$SAVE_DIR"

# Wait briefly for file to be saved
sleep 0.5

# Get the most recent PNG file saved
FILE=$(find "$SAVE_DIR" -type f -name '*.png' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)

# Debug output
echo "Latest screenshot: $FILE"

# Open in swappy if found
if [ -f "$FILE" ]; then
    swappy -f "$FILE"
else
    echo "No screenshot file found."
fi
