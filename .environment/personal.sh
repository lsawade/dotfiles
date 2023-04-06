#!/bin/bash

# export so that default is zshell warning disappears
export BASH_SILENCE_DEPRECATION_WARNING=1
export TMPDIR=/tmp
export PYTHONSTARTUP="${HOME}/lwsspy/lwsspy/startupfiles/python.py"
export DISPLAY=:0
export PM="${HOME}/PDrive/Research/Projects/management"

# GMT
export GMTHOME=/Applications/GMT-6.3.0.app/Contents/Resources
export PROJ_LIB=$GMTHOME/share/proj
export GS_LIB=$GMTHOME/share/ghostscript/Resource/Init
export MAGICK_CONFIGURE_PATH=$GMTHOME/lib/GraphicsMagick/config

# Important class locations
AOSGIT=$HOME/PDrive/Princeton/Academic/Courses/AOS551/GIT

# Some directories
export GCMT3D=$HOME/PDrive/Research/Projects/GCMT3D
