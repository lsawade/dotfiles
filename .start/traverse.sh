#!/bin/bash

module load anaconda3

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/licensed/anaconda3/2020.7/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/licensed/anaconda3/2020.7/etc/profile.d/conda.sh" ]; then
        . "/usr/licensed/anaconda3/2020.7/etc/profile.d/conda.sh"
    else
        export PATH="/usr/licensed/anaconda3/2020.7/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
