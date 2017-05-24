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

. ${DIR}/metronome.bash "$2" &
SUBPROCESS="$!"
sleep "$1"
kill $SUBPROCESS
# Sorry for butchering your name, Yngwie
say "You can stop, yng veigh"

