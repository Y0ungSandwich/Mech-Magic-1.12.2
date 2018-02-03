#!/bin/bash
#Mech and Magic Automated Backup
NOW=$(date +"%d-%m-%Y")
i=$(date +"%Hh%Mm%Ss")
screen -S mm -p world -X stuff "say §4Writing §4to §4Backup. §4Server §4Going §4Read §4Only..."`echo -ne '\015'`
screen -S mm-p world -X stuff "save-off"`echo -ne '\015'`
screen -S mm -p world -X stuff "save-all"`echo -ne '\015'`
sleep 3
tar -czf /backup/mm/world-$NOW-$i.tar.gz /path/to/directory/world
screen -S mm -p world -X stuff "save-on"`echo -ne '\015'`
screen -S mm -p world -X stuff "say §4Backup §4Complete. §4Server §4Going §4Read-Write..."`echo -ne '\015'`
find /path/to/directory/ -mmin +2880 -exec rm -f {} \;

