#!/bin/bash

read -p "Enter the directory path: " dir

if [ -d "$dir" ]; then
    file_count=$(find "$dir" -type f | wc -l)
    echo "Total files in $dir: $file_count"
else
    echo "Error: Directory does not exist."
fi
