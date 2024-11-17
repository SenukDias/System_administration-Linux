# Example of job definition:
# .---------------- minute (0 - 59) ⏰
# |  .------------- hour (0 - 23) ⏳
# |  |  .---------- day of month (1 - 31) 📅
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ... 🌙
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat 🌞
# |  |  |  |  |
# *  *  *  *  * user-name  command to be executed 💻

* * * * *  /usr/bin/echo $(df -h) >> /tmp/Backups/printDF-H-$(date "+\%h-\%d-\%H-\%M") 📂

18 * * * * /usr/bin/mkdir /tmp/Backups/cronfold 📁
19 * * * * /usr/bin/touch /tmp/Backups/cronfold/test.txt 📝
* * * * * /usr/bin/mv /tmp/Backups/cronfold /tmp/Backups/cron-$(date "+\%h-\%d-\%H-\%M") 📦
