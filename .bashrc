#!/bin/bash

# Run base bashrc -- I found out the hard way that this sets the
# $ shopt -s checkwindowsize
# This is necessary if you have a varying prompt, say one
# that indicates your git branch and/or conda env, because it varies
# the line length expected after the prompt. 'checkwindowsize` will
# will compensate for any changes in the prompt.
if [ -e  /etc/bashrc ]
then
    source /etc/bashrc
fi

# Return if shell is not running interactively
case $- in
    *i*) ;;
      *) return;;
esac

# Some shell options
# shopt -s direxpand  # Expands environment variables upon tab completion 

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
if [[ $HOSTNAME == "geo-lsawade19" ]] || [[ $HOSTNAME == "Mis-MacBook-Pro.local" ]] || [[ $HOSTNAME == "vpn"*"princeton"* ]]; then
    source "${PATHSDIR}/personal.sh"
    source "${ENVIRDIR}/personal.sh"
    source "${FUNCTDIR}/personal.sh"
    source "${ALIASDIR}/personal.sh"
    source "${STARTDIR}/personal.sh"

    PROMPTUSER=$USER
    PROMPTHOST="mac"

elif [[ $HOSTNAME == *"andes"* ]]; then
    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Andes only
    source "${ENVIRDIR}/andes.sh"
    source "${ALIASDIR}/andes.sh"
    source "${STARTDIR}/andes.sh"

    PROMPTUSER=$USER
    PROMPTHOST="andes"


elif [[ $HOSTNAME == *"dtn"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # DTN only
    source "${ENVIRDIR}/dtn.sh"
    source "${ALIASDIR}/dtn.sh"
    source "${STARTDIR}/dtn.sh"

    PROMPTUSER=$USER
    PROMPTHOST="dtn"

elif [[ $HOSTNAME == *"login"* ]] || [[ $HOSTNAME == *"batch"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Summit only
    source "${ENVIRDIR}/summit.sh"
    source "${ALIASDIR}/summit.sh"
    source "${STARTDIR}/summit.sh"
    source "${PATHSDIR}/summit.sh"

    PROMPTUSER=$USER
    PROMPTHOST="summit"


elif [[ $HOSTNAME == *"tiger"* ]] || [[ $HOSTNAME == *"tigressdata"* ]]; then

    # Tiger General
    source "${ENVIRDIR}/tiger.sh"
    source "${ALIASDIR}/tiger.sh"
    source "${STARTDIR}/tiger.sh"

    PROMPTUSER=$USER
    PROMPTHOST=$(echo $HOSTNAME | awk --field-separator='.' '{print $1}')


elif [[ $HOSTNAME == *"vrientius"* ]]; then

    source "${PATHSDIR}/personal.sh"
    source "${ENVIRDIR}/vrientius.sh"
    source "${ALIASDIR}/vrientius.sh"
    source "${FUNCTDIR}/vrientius.sh"
    source "${ALIASDIR}/personal.sh"
    source "${STARTDIR}/vrientius.sh"

    PROMPTUSER=$USER
    PROMPTHOST="vrientius"

elif [[ $HOSTNAME == *"traverse"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/traverse.sh"
    source "${ALIASDIR}/traverse.sh"
    source "${STARTDIR}/traverse.sh"
    source "${PATHSDIR}/traverse.sh"

    PROMPTUSER=$USER
    PROMPTHOST="traverse"

else
    
    PROMPTUSER=${USER}
    PROMPTHOST="${HOSTNAME}"

fi

# Has to be run here because Prompthost and user aren't defined prior
source "${STARTDIR}/general.sh"

# Prompt settings
source ~/.bash-powerline.sh





export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
