#!/bin/bash

read -p "Enter the file or directory to compress: " source
read -p "Enter the destination (including filename, e.g., backup.tar.gz): " dest

if [ ! -e "$source" ]; then
    echo "Error: Source file/directory does not exist."
    exit 1
fi

tar -czf "$dest" "$source"

echo "Compression successful: $dest"
