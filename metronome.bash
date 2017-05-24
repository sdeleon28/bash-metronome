#!/bin/bash

# BEGIN $DIR boilerplate
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
# END $DIR boilerplate

BPM="$1"
ONE_MIN_MILLIS=60000
INTERVAL_MILLIS=$(bc -l <<< "$ONE_MIN_MILLIS / $BPM")
INTERVAL_SECS=$(bc -l <<< "$INTERVAL_MILLIS / 1000")

while true
do
  afplay "${DIR}/click.mp3" &
  sleep "$INTERVAL_SECS"
done

