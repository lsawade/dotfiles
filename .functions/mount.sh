#!/bin/bash

# Mounting of a remote directory
function sshmount()
{
    # Define directories
    NAME=$1 # Necessary for OSX FUSE and the finder
    DIR=$2
    REMOTE=$3
    REMOTEDIR=$4
    
    # Define mountcommand
    MOUNTCOMMAND="sshfs $REMOTE:$REMOTEDIR $DIR -o volname=$NAME"
    
    # Check whether it exist and and is empty
    if [ -d $DIR ]
    then
    echo "Directory does exist."
    if [ -z "$(ls -A $DIR)" ]
    then
        echo " "
        echo "Directory exist and is empty. Mounting..."
        echo " "
        echo "Mounting remote directory ..."
        echo " "
    
        eval $MOUNTCOMMAND
        echo " "
        echo "Directory $REMOTE:$REMOTEDIR mounted to $DIR."
            echo " "
    else
        echo " "
        echo "You idiot. You put files where they shouldnt go."
        echo " "
    fi
    else
    echo " "
    echo "Local directory doesnt exist."
    echo " "
    echo "Mounting remote directory ..."
    echo " "
    
    mkdir "$DIR" & eval $MOUNTCOMMAND

    echo " "
    echo "Directory $REMOTE:$REMOTEDIR mounted to $DIR."
    echo " "

    fi
}


function rmmount()
{
    umount -f "$1" && rmdir "$1"
}

# mount scratch
function mttiger()
{
    # Name for finder
    NAME="tiger"

    # Define local mount directory
    DIR="$HOME/tiger"

    # Define remote mount directory
    REMOTE="lsawade@tigercpu.princeton.edu"
    REMOTEDIR="./"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}

# mount scratch
function mttrav()
{
    # Name for finder
    NAME="traverse"

    # Define local mount directory
    DIR="$HOME/traverse"

    # Define remote mount directory
    REMOTE="lsawade@traverse8.princeton.edu"
    REMOTEDIR="./"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}

# mount scratch
function mtst()
{
    # Name for finder
    NAME="straverse"

    # Define local mount directory
    DIR="$HOME/straverse"

    # Define remote mount directory
    REMOTE="lsawade@traverse8.princeton.edu"
    REMOTEDIR="/scratch/gpfs/lsawade"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}

# mount scratch
function mttigress()
{
    # Name for finder
    NAME="tigress"
    
    # Define local mount directory
    DIR="$HOME/tigress"

    # Define remote mount directory
    REMOTE="lsawade@traverse8.princeton.edu"
    REMOTEDIR="/tigress/lsawade"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}

# mount scratch
function mtscratch()
{
    # Name for finder
    NAME="scratch"
    
    # Define local mount directory
    DIR="$HOME/scratch"

    # Define remote mount directory
    REMOTE="lsawade@tigercpu.princeton.edu"
    REMOTEDIR="/scratch/gpfs/lsawade"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}

# mount scratch
function mtasc()
{
    # Name for finder
    NAME="ascent"

    # Define local mount directory
    DIR="$HOME/ascent"

    # Define remote mount directory
    REMOTE="lsawade@login1.ascent.olcf.ornl.gov"
    REMOTEDIR="./"

    # Mount Shit
    sshmount $NAME $DIR $REMOTE $REMOTEDIR
}
