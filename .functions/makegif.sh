#!/bin/bash

# Create GIF
function mkgif()
{
    FRAMERATE=$1 
    GLOBSTR=$2
    EXTRAS=${@:2:$#-1}
    OUTFILE=${@:-1}

    echo $FRAMERATE "$GLOBSTR" "$EXTRAS" $OUTFILE
    ffmpeg -framerate $FRAMERATE \
    -pattern_type glob \
    -i "$GLOBSTR" $EXTRAS $OUTFILE
}