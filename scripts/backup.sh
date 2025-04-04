#!/bin/bash
source "$(dirname "$0")/../log.sh"

# Prompt for source file/directory
read -p "Enter the file or directory to backup: " source

# Check if source exists
if [ ! -e "$source" ]; then
    echo "Error: Source file/directory does not exist."
    log_action "Backup failed: Source file/directory does not exist."
    exit 1
fi

# Prompt for backup destination
read -p "Enter the backup destination: " backup_dest

# Check if the backup destination is empty
if [ -z "$backup_dest" ]; then
    echo "Error: Backup destination cannot be empty."
    log_action "Backup failed: Backup destination was empty."
    exit 1
fi

# Ensure backup directory exists
mkdir -p "$backup_dest"

# Generate a unique backup name
backup_name="$(basename "$source")_backup_$(date +%Y%m%d%H%M%S)"

# Copy the file or directory to the backup destination
if cp -r "$source" "$backup_dest/$backup_name"; then
    echo "Backup successful: $backup_dest/$backup_name"
    log_action "Backup successful: $backup_dest/$backup_name"
else
    echo "Error: Backup failed."
    log_action "Backup failed."
    exit 1
fi
