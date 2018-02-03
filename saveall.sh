#!/bin/bash
# Minecraft
# Author: YoungSancwich
# http://mechandmagic.com
echo "Initiatiing Save-All for MechMagic"
screen -S mm -p world -X stuff "save-all"`echo -ne '\015'`
sleep 2
screen -S mm -p world -X stuff "say Auto Save Complete"`echo -ne '\015'`
