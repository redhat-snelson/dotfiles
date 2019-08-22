#!/bin/bash
# -*-shell-script-*-
######################################################################
# ICE
######################################################################

if [ -z "$ICEROOT" ]; then export ICEROOT=${HOME}/xm/${XMICEVER}; fi
#export ICEDISK=${XMBASE}/icedisk
export ICEDISK=/midas/icedisk
alias iceroot='cd ${ICEROOT}/test'

export LD_LIBRARY_PATH="${ICEROOT}/lib:$LD_LIBRARY_PATH"

