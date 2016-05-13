#!/bin/bash

md=$(md5sum /etc/crontab)
mdreal=$(cat /var/log/crontab_log.log)
if [ "$md" = "$mdreal" ]
then
    echo "Same"
else
    echo "Differs"
    md5sum /etc/crontab > /var/log/crontab_log.log
    mail -s "crontab changed" "root" "Crontab file changed"
fi
