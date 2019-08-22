#!/bin/bash
######################################################################
# Versions
######################################################################

#In Future, make these be set in /etc/profile.d/midas.bash?:
#In Future, maybe make ice394-11 be a variable that is passed into shell script with $1, $2,$3 format, etc.
if [ -z "$XMVER" ]; then export XMVER='xm-4_16_0'; fi
if [ -z "$XMICEVER" ]; then export XMICEVER='ice398-22'; fi
if [ -z "$NXMVER" ]; then export NXMVER='nxm370'; fi
if [ -z "$XMPYVER" ]; then export XMPYVER='xmpy-4_0_2'; fi

# Cosmic AES Midas stuff
export XMSTAWSVER=staws_2.2.0
export XMXSTAWSVER=xstaws_2.1.0
export XMCTOEVER=ctoe_1.0.1
export XMCCOMMVE=ccomm_1.2.0
export XMBSHOTVER=bshot_2.2.0
export XMBSUDPVER=bsudp_1.0.0
export XMXSTPICVER=xstpic_1.1.0
export XMSSIPVER=ssip
export XMSYNCTESTVER=sync_test
export XMSNAPPLVER=snappl
export XMCMSGQVER=cmsgq_1.0.0
export XMCOMBINERVER=combiner_1.0.0
export XMEXECVER=executive
export XMCOMBOCVER=comboc_1.1.0

