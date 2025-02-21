#!/bin/bash


gnumod

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
