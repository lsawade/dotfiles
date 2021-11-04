#!/bin/bash

# Return if shell is not running interactively
case $- in
    *i*) ;;
      *) return;;
esac

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
    source "${PATHSDIR}/personal.sh"
    source "${ENVIRDIR}/personal.sh"
    source "${FUNCTDIR}/personal.sh"
    source "${ALIASDIR}/personal.sh"
    source "${STARTDIR}/personal.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="mac"

elif [[ $HOSTNAME == *"andes"* ]]; then
    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Andes only
    source "${ENVIRDIR}/andes.sh"
    source "${ALIASDIR}/andes.sh"
    source "${STARTDIR}/andes.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="andes"


elif [[ $HOSTNAME == *"dtn"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # DTN only
    source "${ENVIRDIR}/dtn.sh"
    source "${ALIASDIR}/dtn.sh"
    source "${STARTDIR}/dtn.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="dtn"

elif [[ $HOSTNAME == *"login"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/ornl.sh"
    source "${ALIASDIR}/ornl.sh"

    # Summit only
    source "${ENVIRDIR}/summit.sh"
    source "${ALIASDIR}/summit.sh"
    source "${STARTDIR}/summit.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="summit"


elif [[ $HOSTNAME == *"tiger"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/tiger.sh"
    source "${ALIASDIR}/tiger.sh"
    source "${STARTDIR}/tiger.sh"

    PROMPTUSER="itsme"
    PROMPTHOST=$(echo $HOSTNAME | awk --field-separator='.' '{print $1}')

elif [[ $HOSTNAME == *"vrientius"* ]]; then

    source "${PATHSDIR}/personal.sh"
    source "${ENVIRDIR}/personal.sh"
    source "${FUNCTDIR}/personal.sh"
    source "${ALIASDIR}/personal.sh"
    source "${STARTDIR}/personal.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="vrientius"

elif [[ $HOSTNAME == *"traverse"* ]]; then

    # ORNL General
    source "${ENVIRDIR}/traverse.sh"
    source "${ALIASDIR}/traverse.sh"
    source "${STARTDIR}/traverse.sh"

    PROMPTUSER="itsme"
    PROMPTHOST="traverse"

else
    
    PROMPTUSER=${USER}
    PROMPTHOST="${HOSTNAME}"

fi

# Has to be run here because Prompthost and user aren't defined prior
source "${STARTDIR}/general.sh"

# Prompt settings
source ~/.bash-powerline.sh



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lsawade/.anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lsawade/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lsawade/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lsawade/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

