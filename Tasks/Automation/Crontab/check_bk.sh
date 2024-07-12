#!/bin/bash

# Define the file path
file="/backup/daily/Web/day-$(date +%d-%m).tar.gz"

log_file="/home/centos/Documents/check_log.txt"

# Check if the file exists

if [ -e "$file" ]; then
    echo "$(date): File $file exists." >> "$log_file"
    # Additional steps if the file exists
else
    echo "$(date): File $file does not exist." >> "$log_file"
    # Additional steps if the file does not exist
fi
