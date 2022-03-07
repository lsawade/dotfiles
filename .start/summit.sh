#!/bin/bash

module purge
module load ${MODULES}
# . /sw/andes/python/3.7/anaconda-base/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/ccs/home/lsawade/anaconda3_summit/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/ccs/home/lsawade/anaconda3_summit/etc/profile.d/conda.sh" ]; then
        . "/ccs/home/lsawade/anaconda3_summit/etc/profile.d/conda.sh"  # commented out by conda initialize
    else
        export PATH="/ccs/home/lsawade/anaconda3_summit/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

shopt -u progcomp
