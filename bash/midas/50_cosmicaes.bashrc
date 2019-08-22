#!/bin/bash
####################################################################
# Buckshot
# #################################################################
export BUCKSHOT_CFG=${HOME}/xm/${XMBSHOTVER}/src/cfg/buckshot.cfg
export BUCKSHOT_DAT=${HOME}/xm/${XMBSHOTVER}/src/dat

##################################################################
# Python Path
#################################################################
export PYTHONPATH="${HOME}/xm/${XMSTAWSVER}/src/python"
export PYTHONPATH="${HOME}/xm/${XMXSTAWSVER}/src/python"

#####################################################################
# SNAPPL
#####################################################################
export SNAPPL_OSMO=${HOME}/xm/${XMSNAPPLVER}/src/osmo
export COMBO_OSMO=${SNAPPL_OSMO}
export SNAPPL_DAT=${HOME}/xm/${XMSNAPPLVER}/src/dat
export SNAPPL_TEST_DAT=${HOME}/xm/${XMSNAPPLVER}/src/testdat

#export PATH="${HOME}/xm/${XMSNAPPLVER}/src/bin:${PATH}"
pathadd "${HOME}/xm/${XMSNAPPLVER}/src/bin"
#####################################################################
# BSUDP
#####################################################################
export BSUDP_CRAFTER=${HOME}/xm/${XMBSUDPVER}/src/crafter

####################################################################
# NETCOMM
# ####################################################################
export CMSGQ_LIBSSH=${HOME}/xm/${XMCMSGQVER}/src/libssh
export CMSGQ_LIBZMQ=${HOME}/xm/${XMCMSGQVER}/src/libzmq
export CMSGQ_LIBBOOST=${HOME}/xm/${XMCMSGQVER}/src/libboost
export LIBBOOST=/usr

export LD_LIBRARY_PATH="${CMSGQ_LIBZMQ}/lib:${LIBBOOST}/lib:$LD_LIBRARY_PATH"

export CPATH="${CMSGQ_LIBZMQ}/include:${CMSGQ_LIBBOOST}/include:$CPATH"
###################################################################
# XMPYQt4
###################################################################
export QT4DIR=/usr/lib64/qt4

###################################################################
# COMBOC
###################################################################
export XMISIS_CFG=${HOME}/xm/${XMCOMBOCVER}/src/cfg/xmisis.cfg

