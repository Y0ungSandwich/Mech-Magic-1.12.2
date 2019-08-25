#!/bin/bash
# Mech&Magic
[ $USER = "root" ] && echo 'WARNING Do Not Run This Script As Root!' && exit 1

#Launch from server file directory
screen -d -m -S mm -t world -d -m /mnt/raid0/mechmagic/forge_start.sh

#Purge Crash Reports older than 4 days
find /mnt/raid0/mechmagic/crash-reports -mmin +5760 -exec rm {} \;

#Purge Logs older than 4 days
find /mnt/raid0/mechmagic/logs -mmin +5760 -exec rm {} \;


