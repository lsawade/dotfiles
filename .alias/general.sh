#!/bin/bash

# ------ Aliases -----------------------------------

# For dotfiles
 alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# For safety
alias ln='ln -s'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# convenience redefinitions
alias enw='emacs -nw'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ..='cd ..'
alias ...='cd ...'
alias cd..='cd ..'
alias cd-='cd -'
alias ls='ls'
alias la='ls -a'
alias ll='ls -lh'
alias lla='ls -lha'
alias dir='ls -lh'
alias df="df -h"
alias hhh="cd $HOME"
alias g="git"
alias h="history"
alias condout="conda deactivate && conda deactivate"
alias rbash="source ${HOME}/.bashrc"

# Convenience function to clear pycache files 
alias pyclean='find . -type f -name "*.py[co]" -delete -o -type d -name __pycache__ -delete'

# Schedulers
alias sq='squeue -u lsawade -o "%.14i %.24j %.9P %.2t%.10M %.6D %.21S %.15R"'

# SSH aliases
source ${HOME}/.alias/ssh.sh

# Profiling CUDA
alias myprof='ncu --set default --metrics sm__warps_active.avg.pct_of_peak_sustained_active,l1tex__t_bytes_pipe_lsu_mem_global_op_ld.sum.per_second,smsp__sass_average_data_bytes_per_sector_mem_global_op_ld.pct,gpu__time_active.avg'
