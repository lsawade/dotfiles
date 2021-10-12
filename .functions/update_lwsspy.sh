#!/bin/bash

function ulwsspy() {

usage="

Updates all packages of lwsspy that are located in a single directory


Usage:
------

ulwsspy <DIRECTORY> <BRANCH>


Variables:
----------

DIRECTORY:  Directory where all lwsspy packages are installed.

BRANCH:     Git branch to update.


---

WARNING: Behaviour is unsafe/upredictable if branches aren't consistent.
"

Nexpect=2

if [ -z $1 ] || [ "${1}" == "-h" ] || [ "${1}" == "--help" ] || [ $# -ne $Nexpect ]
then
    echo -e "$usage"
    exit
fi


LWSSPYDIR=$1
BRANCH=$2

packages=( lwsspy lwsspy.seismo lwsspy.gcmt3d)

# Save current location
CURRENTDIR=$(pwd)

# Move to new location
cd ${LWSSPYDIR}

for pack in "${packages[@]}"
do
    echo "${pack}"
    cd "${LWSSPYDIR}/${pack}"
    # git checkout -b dev		
    git pull origin ${BRANCH}
    cd -

done

cd ${CURRENTDIR}

}