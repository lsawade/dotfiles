#!/bin/bash

# Directories for organized dot files
ENVIRDIR="${HOME}/.environment"
FUNCTDIR="${HOME}/.functions"
ALIASDIR="${HOME}/.alias"
PATHSDIR="${HOME}/.paths"
STARTDIR="${HOME}/.start"
SSHDIR="${HOME}/.ssh"

# Setting general paths, environment variables, functions, alias 
source "${PATHSDIR}/general.sh"
source "${ENVIRDIR}/general.sh"
source "${FUNCTDIR}/general.sh"
source "${ALIASDIR}/general.sh"


# Setting Host specific 
if [[ $HOSTNAME == "geo-lsawade19" ]]; then
    echo "I'm on the mac"
    source "${PATHSDIR}/personal.sh"
    source "${ENVIRDIR}/personal.sh"
    source "${FUNCTDIR}/personal.sh"
    source "${ALIASDIR}/personal.sh"
    source "${STARTDIR}/personal.sh"


elif [[ $HOSTNAME == *"andes"* ]]; then
    echo "I'm on Andes"
    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Andes only
    source "${ENVIRDIR}/andes.sh"
    source "${ALIASDIR}/andes.sh"
    source "${STARTDIR}/andes.sh"


elif [[ $HOSTNAME == *"dtn"* ]]; then
    echo "I'm on a Data Transfer Node"
    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # DTN only
    source "${ENVIRDIR}/dtn.sh"
    source "${ALIASDIR}/dtn.sh"
    source "${STARTDIR}/dtn.sh"

elif [[ $HOSTNAME == *"login"* ]]; then
    echo "I'm on Summit"
    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Summit only
    source "${ENVIRDIR}/summit.sh"
    source "${ALIASDIR}/summit.sh"
    source "${STARTDIR}/summit.sh"

else
    echo "Host not defined. Only general dotfiles loaded."

fi


# Terminal settings

#------ Colour Xterms/VI --------------------------
 export TERM=xterm-256color
 export CLICOLOR=true
 export LSCOLORS=Exfxbxdxcxegedabagacad
# --------------------------------------------------

# ------ Prompt settings  --------------------------
# export PS1="[\[\e[1;38;5;125m\]\u\[\e[m\] @ \[\e[1;38;5;28m\]\W\[\e[m\]]\$ "
#---------------------------------------------------
 
# Check whether the shell is in emacs --> emacs cant handle the PROMPT command
PROMPT='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

if [ -z "$INSIDE_EMACS" ]; then
    export PROMPT_COMMAND="${PROMPT}"
else
    export PROMPT_COMMAND=''
fi



# Prompt settings
source ~/.bash-powerline.sh


