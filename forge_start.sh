#!/bin/sh
###Mech Magic Lite###
###This script is ran after start.sh###
###Create Java Virtual Machine###
java -Xmx16G -XX:+UseG1GC -XX:+AlwaysPreTouch -XX:InitiatingHeapOccupancyPercent=20  -XX:+UseLargePagesInMetaspace -Dfml.readTimeout=300 -Dfml.queryResult=confirm -jar forge-1.12.2-14.23.5.2836-universal.jar no gui
