#!/bin/bash

module load anaconda3/2022.5
module load cudatoolkit/11.7
module load gcc/8
module load openmpi/gcc/4.1.2 


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/licensed/anaconda3/2022.5/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/licensed/anaconda3/2022.5/etc/profile.d/conda.sh" ]; then
        . "/usr/licensed/anaconda3/2022.5/etc/profile.d/conda.sh"
    else
        export PATH="/usr/licensed/anaconda3/2022.5/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
