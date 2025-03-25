#!/bin/bash

# Count number of files in a directory
read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    count=$(ls -l "$dir" | grep -c "^-" )
    echo "Number of files in $dir: $count"
    echo "Counted files in $dir" >> script.log
else
    echo "Invalid directory."
fi
