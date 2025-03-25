#!/bin/bash

read -p "Enter the directory to list: " dir

if [ ! -d "$dir" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

ls -lah "$dir"
echo "Listed contents of $dir" >> script.log
