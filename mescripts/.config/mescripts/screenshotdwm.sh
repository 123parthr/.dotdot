#!/bin/bash

# Generate a timestamp for the filename
timestamp=$(date +"%Y%m%d_%H%M%S")

# Set the filename with the timestamp for the original screenshot
original_filename="$HOME/Pictures/tmp/screenshot_$timestamp.png"

# Set the filename with the timestamp for the cropped screenshot
cropped_filename="$HOME/Pictures/dwmScr/scrshot_$timestamp"

# Take a screenshot using scrot
scrot "$original_filename"

# Use imagemagick to crop the screenshot interactively
import -frame "$original_filename" "$cropped_filename.png"

# Cleanup temporary files
rm "$original_filename"
rm "$cropped_filename-1.png"

# Display the cropped screenshot using an image viewer (optional)
# You can replace `sxiv` with your preferred image viewer
# sxiv "$cropped_filename"
xdg-open "$cropped_filename-0.png"

