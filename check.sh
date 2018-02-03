#!/bin/sh
if screen -list | grep -q "mm";
then
   echo "server is running"
else
   echo "server is not running"
   sh ./start.sh
   NOW=$(date +"%b-%d-%y %H:%M")
   echo '[' $NOW ']: Server was OFFLINE. Status = ONLINE' >> /mnt/raid0/mm/world/servercheck.log

fi
