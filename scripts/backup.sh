#!/bin/bash
# Prompt for source file/directory
read -p "Enter the file or directory to backup: " source

# Check if source exists
if [ ! -e "$source" ]; then
    log_action "Error: Source file/directory does not exist."
    echo "Error: Source file/directory does not exist."
    exit 1
fi

# Prompt for backup destination
read -p "Enter the backup destination: " backup_dest

# Ensure backup directory exists
mkdir -p "$backup_dest"

# Generate a unique backup name
backup_name="$(basename "$source")_backup_$(date +%Y%m%d%H%M%S)"

# Copy the file or directory to the backup destination
if cp -r "$source" "$backup_dest/$backup_name"; then
    log_action "Backup successful: $backup_dest/$backup_name"
    echo "Backup successful: $backup_dest/$backup_name"
else
    log_action "Error: Backup failed."
    echo "Error: Backup failed."
    exit 1
fi
