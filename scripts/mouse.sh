#!/bin/bash
TOUCHID=`xinput list --id-only "SynPS/2 Synaptics TouchPad"`
#NUBID=`xinput list --id-only "AlpsPS/2 ALPS DualPoint Stick"`

declare -i status
status=`xinput list-props ${TOUCHID} | grep Device\ Enabled | sed -e 's/.*\:[ \t]\+//g'`

if [ 0 -eq ${status} ] ; then
    xinput enable ${TOUCHID}
    #xinput enable ${NUBID}
else
    xinput disable ${TOUCHID}
    #xinput disable ${NUBID}
fi
