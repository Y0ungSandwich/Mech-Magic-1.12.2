#!/bin/bash
# Minecraft
# Author: YoungSancwich
# http://mechandmagic.com

[ $USER = "root" ] && echo 'WARNING Do Not Run This Script As Root!' && exit 1

#Launch from server file directory
screen -d -m -S mm -t world -d -m /path/to/directory/forge_start.sh

#Purge Crash Reports older than 4 days
find /path/to/directory/crash-reports -mmin +5760 -exec rm {} \;

#Purge Logs older than 4 days
find /path/to/directory/logs -mmin +5760 -exec rm {} \;


