#!/bin/bash
source "$(dirname "$0")/../log.sh"

# Display disk usage of a directory
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    du -sh "$dir"
    echo "Displayed disk usage for $dir" >> script.log
    log_action "Displayed disk usage for $dir"
else
    echo "Invalid directory."
    log_action "Invalid directory."
fi
