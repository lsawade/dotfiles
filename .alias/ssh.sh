#!/bin/bash

# General
alias rssh="ssh -F /dev/null"

# Princeton
alias                addy="ssh -Y ${NETID}@${ADROIT}"
alias            tigercpu="ssh ${NETID}@${TIGERCPU}"
alias            tigergpu="ssh ${NETID}@${TIGERGPU}"
alias           vrientius="ssh -Y ${NETID}@${VRIENTIUS}"
alias            cressida="ssh ${NETID}@${CRESSIDA}"
alias         traverse="ssh -X ${NETID}@${TRAVERSE}"
alias        clover="ssh -v -X ${NETID}@${CLOVER}"
alias      tigressdata="ssh -X ${NETID}@${TIGRESSDATA}"
alias tigressgateway="ssh -NCf ${NETID}@${TIGRESSGATEWAY}"

# ORNL
alias summithome="ssh ${ORNLUSER}@${ORNLHOME}"
alias     summit="ssh ${ORNLUSER}@${SUMMIT}"
alias      andes="ssh ${ORNLUSER}@${ANDES}"
alias        dtn="ssh ${ORNLUSER}@${DTN}"

