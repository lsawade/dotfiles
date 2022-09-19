#!/bin/bash

# Input RC
export INPUTRC=~/.inputrc

# Source eternal history to set eternal history
source ${HOME}/.environment/eternalhistory.sh

# HOSTS & USERNAME
# Princeton
export NETID="lsawade"
export CRESSIDA="cressida"
export ADROIT="adroit"
export TIGERCPU="tigercpu"
export TIGERGPU="tigergpu"
export TRAVERSE="traverse"
export TIGRESSDATA="tigressdata"
export VRIENTIUS="128.112.20.221"
export CLOVER="clover"
export TIGRESSGATEWAY="tigressgateway.princeton.edu"

# Oak Ridge National Lab
export ORNLUSER="lsawade"
export ORNLHOME="home.ccs.ornl.gov"
export SUMMIT="summit.olcf.ornl.gov"
export ANDES="andes.olcf.ornl.gov"
export DTN="dtn.ccs.ornl.gov"

# SOME locations
export NOBACKUP="${HOME}/nobackup"

# SEISMIC DATA:
# ALL DATA SHOULD BE DOWNLOADED WITH 200 min since event for
# consistency
export GCMT="${HOME}/GCMT"
export SOBSERVED="${HOME}/SEISDATA/OBSERVED"
export SMDATA="${HOME}/SEISDATA/SHAKEMOVIE_DATA"
export M25DATA="${HOME}/SEISDATA/M25"
export STATIONDATA="${HOME}/SEISDATA/STATIONS"
