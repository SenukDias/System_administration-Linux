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

scp -r /path/to/log/file.txt  root@192.168.125.129:/path/to/destination/file.txt


# * * * * * /home/centos/Documents/notify.sh
# add this to crontab -e on backup pc
