#!/bin/bash

# Path to the Desktop
desktop_path=~/Desktop

# Path to the directory where you want to store the screenshots
base_path=~/Screenshots

# Loop over each screenshot on the desktop
for file in "$desktop_path"/Screenshot*.png
do
    # Check if file exists (if no files match the pattern, the loop will still execute once)
    if [ -f "$file" ]; then
        # Extract the year and month from the filename
        year=$(echo $(basename "$file") | cut -d' ' -f2 | cut -d'-' -f1)
        month=$(echo $(basename "$file") | cut -d' ' -f2 | cut -d'-' -f2)

        # Create the directory if it doesn't exist
        mkdir -p "$base_path/$year/$month"

        # Move the file
        mv "$file" "$base_path/$year/$month/"
        echo "Moved file \"$file\" to $base_path/$year/$month/"
    fi
done
