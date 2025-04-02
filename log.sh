#!/bin/bash

LOG_FILE="script.log"

log_action() {
    local action="$1"
    echo "Created on: [$(date +"%Y-%m-%d %H:%M:%S")] - $action" >> "$LOG_FILE"
    echo "--------------------------------------------------------------------------------" >> "$LOG_FILE"
}