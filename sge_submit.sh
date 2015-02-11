#!/bin/bash

#for SGE jobs

mkdir tmp;
WD='/home/despoB/kaihwang/TRSE'
SCRIPT='/home/despoB/kaihwang/bin/TDPPI'

cd ${WD}

for Subject in $(ls -d *); do
	
	if [ ! -e "${WD}/${Subject}/MPRAGE/${Subject}_MNI_final.nii.gz" ]; then
		sed "s/s in 107/s in ${Subject}/g" < ${SCRIPT}/preproc_mprage.sh > ${SCRIPT}/tmp/mprage_${Subject}.sh
		qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ${SCRIPT}/tmp/mprage_${Subject}.sh  #-l mem_free=5G
	fi	

done