#!/bin/bash

# Simple cliphist wofi script without copy indexing
# Replicates: cliphist list | wofi --dmenu --allow-images | cliphist decode | wl-copy
# But removes the copy indexing behavior

# Temporary file to store the selection mapping
TEMP_MAP="/tmp/cliphist_selection_map"

# Create a clean version of cliphist list without the indexing IDs
create_clean_list() {
    cliphist list | while IFS=$'\t' read -r id content; do
        # Store the mapping of content to ID
        echo "$content" >> "$TEMP_MAP.content"
        echo "$id" >> "$TEMP_MAP.ids"
        
        # Output just the content for wofi
        echo "$content"
    done
}

# Find the ID for the selected content
get_id_for_selection() {
    local selection="$1"
    local line_num
    
    # Find which line matches our selection
    line_num=$(grep -Fxn "$selection" "$TEMP_MAP.content" | head -1 | cut -d: -f1)
    
    if [ -n "$line_num" ]; then
        # Get the corresponding ID
        sed -n "${line_num}p" "$TEMP_MAP.ids"
    fi
}

# Main execution
{
    # Clean up any existing temp files
    rm -f "$TEMP_MAP"*
    
    # Create clean list and show in wofi
    selection=$(create_clean_list | wofi --dmenu --allow-images \
        --prompt "Clipboard: " \
        --width 880 --height 550 \
        --style ~/.config/wofi/style.css)
    
    # If something was selected, decode and copy it
    if [ -n "$selection" ]; then
        selected_id=$(get_id_for_selection "$selection")
        
        if [ -n "$selected_id" ]; then
            # Decode and copy to clipboard WITHOUT adding to cliphist history
            cliphist decode "$selected_id" | tee >(wl-copy --primary) | wl-copy
        fi
    fi
    
    # Cleanup
    rm -f "$TEMP_MAP"*
}
