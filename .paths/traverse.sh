#!/bin/bash

# RPM installation setup
export PATH="$HOME/centos/usr/sbin:$HOME/centos/usr/bin:$HOME/centos/bin:$PATH"

export MANPATH="$HOME/centos/usr/share/man:$MANPATH"

L='/lib:/lib64:/usr/lib:/usr/lib64'
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:$HOME/centos/usr/lib:$HOME/centos/usr/lib64:${L}"

# VSCODE Server setup
VERSION=v16.17.0
DISTRO=linux-ppc64le
export PATH=$PATH:/home/lsawade/node_modules/.bin/
export PATH=$PATH:/home/lsawade/code-soft/nodejs/node-$VERSION-$DISTRO/bin

