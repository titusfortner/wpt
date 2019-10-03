#!/bin/bash

PREFIX="$1"
VIDEO=false

if [ "$VIDEO" = "true" ]; then
  # capture 10 seconds of video every 10 minutes for at most 2 hours
  seq 12 | while read counter; do
    NOW=`date -u "+%Y-%m-%d_%H-%M-%S"`
    screencapture -V 10 "$PREFIX_$NOW.mov"
    sleep 590
  done
else
  # capture screenshots every 10 seconds for at most 2 hours
  seq 720 | while read counter; do
    NOW=`date -u "+%Y-%m-%d_%H-%M-%S"`
    screencapture -t jpg "$PREFIX_$NOW.jpg"
    sleep 10
  done
fi
