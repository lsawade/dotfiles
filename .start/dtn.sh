#!/bin/bash

module purge
# module load ${MODULES}
# . ${OLCF_PYTHON_ROOT}/etc/profile.d/conda.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/ccs/home/lsawade/dtn_miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/ccs/home/lsawade/dtn_miniconda3/etc/profile.d/conda.sh" ]; then
        . "/ccs/home/lsawade/dtn_miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/ccs/home/lsawade/dtn_miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
