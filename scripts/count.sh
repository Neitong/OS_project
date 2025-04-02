#!/bin/bash
source "$(dirname "$0")/../log.sh"

read -p "Enter the directory path: " dir

if [ -d "$dir" ]; then
    file_count=$(find "$dir" -type f | wc -l)
    echo "Total files in $dir: $file_count"
    log_action "Counted $file_count file(s) in directory '$dir'."
else
    echo "Error: Directory does not exist."
    log_action "Count failed: Directory '$dir' does not exist."
fi
