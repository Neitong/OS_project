#!/bin/bash
source "$(dirname "$0")/../log.sh"

read -p "Enter the path to list: " path

if [ ! -e "$path" ]; then
    echo "Error: The file or directory does not exist."
    log_action "Listing failed: The file or directory '$path' does not exist."
    exit 1
fi

ls -lah "$path"
log_action "Listed contents of '$path'."
