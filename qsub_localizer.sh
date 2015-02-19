#!/bin/bash


WD='/home/despoB/kaihwang/TRSE/'
SCRIPTS='/home/despoB/kaihwang/bin/TDPPI'

cd ${WD}

for Subject in 1422 1427 ; do

	if [ ! -e ${WD}/${Subject}/Localizer_stats.REML_cmd ]; then
		sed "s/s in 106/s in ${Subject}/g" < ${SCRIPTS}/loc_FFA_PPA.sh> ${SCRIPTS}/tmp/localize_FFA_PPA_${Subject}.sh
		qsub -V -M kaihwang -m e -l mem_free=12G -e ~/tmp -o ~/tmp ${SCRIPTS}/tmp/localize_FFA_PPA_${Subject}.sh
	fi	
done
