#!/bin/bash
# -*-shell-script-*-
#####################################################################
# NeXtMidas
#####################################################################
#export JAVAHOME /usr/java/latest
export JAVAHOME=/usr/lib/jvm/java-1.8.0

# NM Directories
export NMROOT=${HOME}/nxm/${NXMVER}
export NXMAREA_USER=${HOME}/nxm

# NM startup
export NM_USER_JVM_FLAGS="-Xms2048m -Xmx2048m"
alias nmstart='source ${NMROOT}/os/unix/nmstart'
export NM_STARTUP_MACRO=nmstartup

# NM History directories
export NMHISTORY_DIR=${NXMAREA_USER}/history

# X-Midas Python
export XMPY_HISTORY=${HOME}/xmpy_history/xmpy
export XMPY_AUTO_IMPORT=OFF
export PYTHONOPTIMIZE=1

export LD_LIBRARY_PATH=${NMROOT}/nxm/sys/lib:$LD_LIBRARY_PATH

