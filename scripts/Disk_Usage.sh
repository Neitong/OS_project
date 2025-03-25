#!/bin/bash

# Display disk usage of a directory
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    du -sh "$dir"
    echo "Displayed disk usage for $dir" >> script.log
else
    echo "Invalid directory."
fi
