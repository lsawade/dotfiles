#!/bin/bash

if [ -e opt/miniconda3/bin/activate ];
then
    source opt/miniconda3/bin/activate
fi


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


