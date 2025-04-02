#!/bin/bash
source "$(dirname "$0")/../log.sh"

# Display disk usage of a directory
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    usage=$(du -sh "$dir" | awk '{print $1}')
    echo "Disk usage for $dir: $usage"
    log_action "Displayed disk usage for '$dir' - Usage: $usage."
else
    echo "Invalid directory."
    log_action "Invalid directory."
fi
