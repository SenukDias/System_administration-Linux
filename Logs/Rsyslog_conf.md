# Steps to Setup Rsyslog Server and Client

## Server Config -----------------------------------------------------------------
Change hostname 
 - hostnamectl hostname Server

firewall-cmd --add-port=514/udp --permanent
firewall-cmd --add-port=514/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-all

systemctl restart rsyslog
netstat -antup | grep 514


### /etc/rsyslog.conf

module(load="imklog") # reads kernel messages (the same are read from journald) 6
module(load="immark") # provides --MARK-- message capability 5

module(load="imudp") # needs to be done just once 3
input(type="imudp" port="514") # 4

module(load="imtcp") # needs to be done just once 1
input(type="imtcp" port="514") # 2

### -------------------------------------------------------------


## Client Config -----------------------------------------------------------------

Change hostname 
 - hostnamectl hostname Client


### /etc/rsyslog.conf

*.* @@192.168.125.129:514
*.* @192.168.125.129:514


systemctl restart rsyslog

### -------------------------------------------------------------

## Check Syslogs in Server

tail -f /var/log/messages
tail -f /var/log/cron
