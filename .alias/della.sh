#!/bin/bash

source $HOME/.alias/princeton.sh

alias scratch="cd ${SCRATCHDIR}"

alias gnumod="module purge && module load anaconda3/2024.6 boost/1.85.0 cudatoolkit/12.6 gcc-toolset/13 && conda activate poetry"
alias intmod="module purge && module load anaconda3/2024.6 boost/1.85.0 cudatoolkit/12.6 intel/2022.2.0 && conda activate poetry"
