 #!/bin/bash

export MODULES="PrgEnv-cray cray-mpich craype-accel-amd-gfx90a emacs"
#export PYTHONSTARTUP="${HOME}/lwsspy/startupfiles/python.py"
export MODULEPATH=${HOME}/Modules/modulefiles:$MODULEPATH
export MPICH_GPU_SUPPORT_ENABLED=1
