#!/bin/bash
# -*-shell-script-*-
######################################################################
# X-Midas
######################################################################
if [ -z "$XMBASE" ]; then export XMBASE=/labusers; fi
export XMBASEOPT=${XMBASE}/opt
export XMSHARED=${XMBASE}/xmdat
export XMLOCALOPT=${XMBASE}/localopt
export XMDISK=${XMBASEOPT}/${XMVER}
export PYTHON_APPS=${HOME}/python_apps
export XMHOMEOPT=${HOME}/xm

# xm startup
alias xmstart='source ${XMDISK}/xm/unix/xmstart.sh'
alias xmbopt='xm reset; xm xmbopt\;sys'

# data directories
export XMHDWR=${XMSHARED}/hwconfig_smu
export MIDASDATAROOT=${XMBASE}/data/${USER}
export MIDASDATAROOT1=${XMBASE}/data1/${USER}
export MIDASDATAROOT11=${XMBASE}/data11/${USER}
export MIDASDATAROOT12=${XMBASE}/data12/${USER}
export MIDASDATAROOT13=${XMBASE}/data11/btucker
export MIDASDATATMP=${XMBASE}/tmpfs

export XM_DEBUGGER='gdb'

# Miscellanous
export XM_COMPLETION_AUX_EXCLUDE=ALL
export XM_NONSUPPORT=GC
export XM_INSERT=ON
export XM_EDITOR=vim
export XM_MORE="less -giwMFX -h1000"
export XM_FEATURE_COUNTING=off
export XM_USER=$USER

# History
export XMHISTORY_DIR=${XMHOMEOPT}/history
export XMHISTORY_AGE=10
export XMBUILDFILE_AGE=10

export XM_PIPING_SYSTEM=DYNAMIC

