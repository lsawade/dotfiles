#!/bin/bash

turbo-vrientius() {
    if [ "$#" -eq 0 ]; then
        echo "\nMissing session number\n";
    else
        ssh -A -L $(( 5900 + $1 )):localhost:$(( 5900 + $1 )) ${NETID}@${VRIENTIUS};
    fi
}

