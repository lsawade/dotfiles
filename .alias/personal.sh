#!/bin/bash

alias matlab='/Applications/MATLAB_R2019b.app/bin/matlab -nodesktop -nosplash'
alias GLImER='cd ~/OneDrive\ -\ University\ of\ Bergen/GLImER'
alias frs='cd /Users/lucassawade/OneDrive/Princeton/Academic/Courses/TA/FRS'
alias mcodes='cd /Users/lucassawade/OneDrive/MATLAB'
alias pvpython="/Applications/ParaView-5.8.1.app/Contents/bin/pvpython"
alias julia="/Applications/Julia-1.5.app/Contents/Resources/julia/bin/julia"

# EMACS
alias pm="emacs ${PM}/org/general.org &"
alias tb="emacs ${PM}/org/timeblock.org &"
alias onotes="emacs ${PM}/org/notes.org &"
alias org='emacs --load ~/.emacs.d/lisp/org-startup.el &'

# go to directories
alias gcmt3d='cd ${GCMT3D}'
alias glimer='cd ${PYGLIMER}'
alias incite='cd ${INCITE}'
alias codes='cd ${CODES}'
alias shakemovie='cd ${SHAKEMOVIE}'

# Start/Stop global protect
alias startGlobalProtect='launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
alias stopGlobalProtect='launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*'
