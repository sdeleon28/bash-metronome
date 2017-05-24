#!/bin/bash
BPM="$1"
ONE_MIN_MILLIS=60000
INTERVAL_MILLIS=$(bc -l <<< "$ONE_MIN_MILLIS / $BPM")
INTERVAL_SECS=$(bc -l <<< "$INTERVAL_MILLIS / 1000")

while true
do
  afplay ./click.mp3 &
  sleep "$INTERVAL_SECS"
done

