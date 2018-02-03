#!/bin/sh
###mm###
###Create Java Virtual Machine###
java -Xmx10G -XX:+UseG1GC -XX:+AlwaysPreTouch -XX:InitiatingHeapOccupancyPercent=20  -XX:+UseLargePagesInMetaspace  -Dfml.queryResult=confirm -jar forge-1.12.2-14.23.1.2607-universal.jar no gui