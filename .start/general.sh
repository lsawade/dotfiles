#!/bin/bash

# Terminal settings

#------ Colour Xterms/VI --------------------------
 export TERM=xterm-256color
 export CLICOLOR=true
 export LSCOLORS=Exfxbxdxcxegedabagacad
# --------------------------------------------------


# CAPITALIZING THE HOSTNAME
PROMPTHOSTCAP=$(echo ${PROMPTHOST} | tr [:lower:] [:upper:])

# Adding this to the PROMPT_COMMAND to change the title of the
# Terminal window to "<HOSTNAME>: /path/to/cwd
PROMPT='echo -ne "\033]0; ${PROMPTHOSTCAP}: ${PWD}\a"'

# Check whether the shell is in emacs --> emacs cant handle the PROMPT command
if [ -z "$INSIDE_EMACS" ]; then
    export PROMPT_COMMAND="${PROMPT}"
else
    export PROMPT_COMMAND=''
fi


