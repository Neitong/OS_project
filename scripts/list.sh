#!/bin/bash

read -p "Enter the path to list: " path

if [ ! -e "$path" ]; then
    echo "Error: The file or directory does not exist."
    exit 1
fi

ls -lah "$path"

# Log the action with a timestamp
echo "$(date '+%Y-%m-%d %H:%M:%S') - Listed contents of $path" >> script.log
