#!/bin/bash
# Minecraft
# Author: YoungSancwich
# http://mechandmagic.com

echo "Initiating Auto Restart for server MM"
screen -S mm -p world -X stuff "say ###Auto Restart - Starting###"`echo -ne '\015'`
sleep 1
screen -S mm -p world -X stuff "say # Restart in 3 Minutes!"`echo -ne '\015'`
sleep 60
screen -S mm -p world -X stuff "say # Restart in 2 Minutes!"`echo -ne '\015'`
sleep 60
screen -S mm -p world -X stuff "say # Restart in 1 Minute!"`echo -ne '\015'`
sleep 50
screen -S mm -p world -X stuff "say # Restart in 10 Seconds! You should log off!"`echo -ne '\015'`
screen -S mm -p world -X stuff "save-all"`echo -ne '\015'`
sleep 5
screen -S mm -p world -X stuff "stop"`echo -ne '\015'`
sleep 60
echo "This script is about to run another script."
sh ./start.sh
echo "This script has just run another script"