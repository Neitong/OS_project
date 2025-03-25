#!/bin/bash

# Prompt for source file/directory
read -p "Enter the file or directory to backup: " source

# Check if source exists
if [ ! -e "$source" ]; then
    echo "Error: Source file/directory does not exist."
    exit 1
fi

# Prompt for backup destination
read -p "Enter the backup destination: " backup_dest"

# Ensure backup directory exists
mkdir -p "$backup_dest"

# Generate a unique backup name
backup_name="$(basename "$source")_backup_$(date +%Y%m%d%H%M%S)"

# Perform backup
if cp -r "$source" "$backup_dest/$backup_name"; then
    echo "Backup successful: $backup_dest/$backup_name"
else
    echo "Error: Backup failed."
    exit 1
fi
