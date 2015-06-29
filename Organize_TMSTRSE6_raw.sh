#!/bin/bash

# script to organize TMSTRSE dataset (subject 6's) raw dicoms. 


WD='/home/despoB/kaihwang/TRSE/TRSEPPI/TRSETMS_6'
tms_Raw='/home/despo/counterman/Data/TRSE_TMS'


## organize tms's 
#subjects: 106 107 108 109 110 111 112 113 114 115 116 117 118
for s in 634 ; do

	if [ ! -d "${WD}/${s}" ]; then

		mkdir ${WD}/${s}

	fi


	# get mprage organized

	if [ ! -d "${WD}/${s}/MPRAGE" ]; then

		mkdir ${WD}/${s}/MPRAGE

	fi

	if [ ! -e "${WD}/${s}/MPRAGE/mprage.nii.gz" ]; then

		3dcopy ${tms_Raw}/${s}/PRE/anatomical/anat.nii ${WD}/${s}/MPRAGE/mprage.nii.gz

	fi


	# get BOLD organized

	cd ${tms_Raw}/${s}/PRE/epi/

	i="1"
	for run_raw_file in $(ls -d *TRSE*.nii.gz | sort -V); do
		
		if [ ! -d ${WD}/${s}/run${i} ]; then
			mkdir ${WD}/${s}/run${i}		
		fi

		if [ ! -e ${WD}/${s}/run${i}/run${i}_raw.nii.gz ]; then
			cp ${tms_Raw}/${s}/PRE/epi/ep2d_neuro_64_TR1000_TRSEblock_${i}.nii.gz ${WD}/${s}/run${i}/run${i}_raw.nii.gz 
		fi	

		i=$[$i+1]

	done


done







