#!/bin/bash
BPM="$1"
ONE_MIN_MILLIS=60000
INTERVAL_MILLIS=$(bc -l <<< "$ONE_MIN_MILLIS / $BPM")
INTERVAL_SECS=$(bc -l <<< "$INTERVAL_MILLIS / 1000")
echo "INTERVAL_MILLIS=${INTERVAL_MILLIS}"
echo "INTERVAL_SECS=${INTERVAL_SECS}"

while true
do
  afplay ./click.mp3 &
  echo "Waiting $INTERVAL_SECS"
  sleep "$INTERVAL_SECS"
done

