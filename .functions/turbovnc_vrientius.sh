#!/bin/bash

vncserver="/opt/TurboVNC/bin/vncserver"
turbostart() {
    if [ $(vncserver -list | wc -l) -eq 4 ]; then
        $vncserver;
    else
        echo -e "\n***SESSION ALREADY RUNNING***" && $vncserver -list;
    fi
}

turbostopall() {
    for x in $($vncserver -list);
    do
        if [[ $x =~ ^: ]]; then
            $vncserver -kill $x;
        fi;
    done
}
