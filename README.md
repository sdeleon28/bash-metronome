# bash-metronome

Command-line metronome for Mac (uses `afplay`).

## Installing

```
cd /usr/local/lib
git clone https://github.com/sdeleon28/bash-metronome
ln -s /usr/local/lib/bash-metronome/metronome.bash /usr/local/bin/met
```

If you want a tool that tells you when you're done doing your excercise, you can add this other symlink:

```
ln -s /usr/logca/lib/bash-metronome/time-metronome.bash /usr/local/bin/timet
```

## Usage

To start the metronome at 60 BPM, run:

```
met 60
```

If you also installed `timet`, you can do:

```
timet 120 60
```

To do an excercise for two minutes at 60 BPM.

