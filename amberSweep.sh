#!/bin/bash
set -x

DATE=$(date +%Y-%m-%d)
FILE="/home/pi/amberAlert/$DATE.csv"
ELEMENTS="created_at,id_str,coordinates,lang,source,screen_name,text"
TOPIC="Amber Alert"
COMMAND="/usr/bin/python /home/pi/apps/twitter-streamer/streamer/streamer.py -f"

$COMMAND $ELEMENTS "$TOPIC" | tee -a $FILE
