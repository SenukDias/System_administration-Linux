#!/bin/bash

tar -czf /tmp/html_$(date +%d-%m).tar.gz /var/www/html

scp -r /tmp/html_$(date +%d-%m).tar.gz root@192.168.125.130:/backup/daily/Web/day-$(date +%d-%m-%M).tar.gz

rm /tmp/html_$(date +%d-%m).tar.gz

# 30 12 * * *  /path/to/script/bk_web.sh 
# add this to crontab -e
