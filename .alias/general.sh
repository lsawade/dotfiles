#!/bin/bash

# ------ Aliases -----------------------------------

# For dotfiles
alias config="/usr/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}"

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
alias python="python3"
alias rbash="source ${HOME}/.bashrc"
# Convenience function to clear pycache files 
alias pyclean='find . -type f -name "*.py[co]" -delete -o -type d -name __pycache__ -delete'

# Schedulers
alias sq='squeue -u lsawade -o "%.14i %.24j %.9P %.2t%.10M %.6D %.21S %.15R"'

# SSH aliases
source ${HOME}/.alias/ssh.sh

