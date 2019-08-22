#!/bin/bash
######################################################################
# INTEL
######################################################################
set INTELBASE=/opt/intel
set INTELPLAT=intel64
set INTELVER=composer_xe_2013_sp1.1.106

set CHECK=${INTELBASE}/${INTELVER}/bin/compilervars.csh
if [ -e "${CHECK}" -a -f "${CHECK}" -a -r "${CHECK}" ]; then
	source ${INTELBASE}/${INTELVER}/bin/compilervars.csh ${INTELPLAT}
fi


