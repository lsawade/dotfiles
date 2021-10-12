#!/bin/bash

# create and enter directory
function mkcdir()
{
mkdir -p -- "$1" &&
    cd -P -- "$1"
}


source ${HOME}/.functions/update_lwsspy.sh
