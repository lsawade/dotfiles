# .bashrc_setup
# frontier - adding system specifics
#
# system
export SYSTEM_NAME="frontier"

# scratch
export SCRATCH=/lustre/orion/geo148/scratch/${USER}/

## (default) Cray
module load PrgEnv-cray
# HIP
module load amd-mixed

## AMD
#module load PrgEnv-amd
# HIP
#module load amd

## GNU
#module load PrgEnv-gnu
# HIP
#module load amd-mixed


# GPU-aware MPI
module load cray-mpich
module load craype-accel-amd-gfx90a
export MPICH_GPU_SUPPORT_ENABLED=1

# additionals
module load adios2/2.8.3
module load gnuplot
module load emacs

module unload darshan-runtime

