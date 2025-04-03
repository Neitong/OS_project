#!/bin/bash
source "$(dirname "$0")/../log.sh"

read -p "Enter the file or directory to compress: " source

# Check if the source input is empty.
if [ ! -e "$source" ]; then
    echo "Error: Source file/directory does not exist."
    log_action "Compression failed: Source file/directory '$source' does not exist."
    exit 1
fi

read -p "Enter the destination (including filename, e.g., backup.tar.gz): " dest

# Check if the destination input is empty.
if [ -z "$dest" ]; then
    echo "Error: Destination cannot be empty."
    log_action "Compression failed: Destination was empty."
    exit 1
fi

if tar -czf "$dest" "$source"; then
    echo "Compression successful: $dest"
    log_action "Compression successful: '$source' compressed to '$dest'."
else
    echo "Error: Compression failed."
    log_action "Compression failed: Could not compress '$source' to '$dest'."
    exit 1
fi
