 #!/bin/bash

export MODULES="gcc spectrum-mpi cuda cmake boost emacs"
export PYTHONSTARTUP="${HOME}/lwsspy/startupfiles/python.py"
export SGT="/gpfs/alpine/geo111/scratch/lsawade/SGT"
export MODULEPATH=${HOME}/Modules/modulefiles:$MODULEPATH
