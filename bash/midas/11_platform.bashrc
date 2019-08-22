#!/bin/bash
# -*-shell-script-*-
######################################################################
# RHEL detect
######################################################################

export XMPLATFORM=`platform.py -x`
export XMPLATNEW=`stplatform.py -X`
export XMPLATICE=`stplatform.py -Xpic`

