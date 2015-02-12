#!/bin/bash

#for SGE jobs

mkdir tmp;
WD='/home/despoB/kaihwang/TRSE'
SCRIPT='/home/despoB/kaihwang/bin/TDPPI'

cd ${WD}

for Subject in $(ls -d *); do
	
	#if [ ! -e "${WD}/${Subject}/MPRAGE/${Subject}_MNI_final.nii.gz" ]; then
	#	sed "s/s in 107/s in ${Subject}/g" < ${SCRIPT}/preproc_mprage.sh > ${SCRIPT}/tmp/mprage_${Subject}.sh
	#	qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ${SCRIPT}/tmp/mprage_${Subject}.sh  #-l mem_free=5G
	#fi	

	for r in $(seq 1 1 20); do
		
		if [ ! -e "${WD}/${Subject}/run${r}/nswdkmt_run${r}_raw_6.nii.gz" ]; then
			sed "s/s in 106/s in ${Subject}/g; s/run1/run${r}/g " < ${SCRIPT}/preproc_functional.sh > ${SCRIPT}/tmp/functional_${Subject}_${r}.sh 
			qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ${SCRIPT}/tmp/functional_${Subject}_${r}.sh   #-l mem_free=5G
		fi
	done

done