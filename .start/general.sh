#!/bin/bash

# Terminal settings

#------ Colour Xterms/VI --------------------------
 export TERM=xterm-256color
 export CLICOLOR=true
 export LSCOLORS=Exfxbxdxcxegedabagacad
# --------------------------------------------------


# This is just for the terminal window title I don't 
# quite understand how it works...
PROMPT='echo -ne "\033]0;$(echo ${PROMPTHOST} | tr [:lower:] [:upper:]): ${PWD}\007"'

# Check whether the shell is in emacs --> emacs cant handle the PROMPT command
if [ -z "$INSIDE_EMACS" ]; then
    export PROMPT_COMMAND="${PROMPT}"
else
    export PROMPT_COMMAND=''
fi


