#!/bin/bash

# script to organize the "enhance" TRSE dataset (from Tony Chen and Erica) raw dicoms. 


WD='/home/despoB/kaihwang/TRSE/TRSEPPI/TRSETMS_6'
enhance_raw='/home/despo/enhance/MRIdata_subjects/TRSE'


## organize tms's 
#subjects: 106 107 108 109 110 111 112 113 114 115 116 117 118
for s in 7616; do

	if [ ! -d "${WD}/${s}" ]; then

		mkdir ${WD}/${s}

	fi
	
	# get mprage organized

	if [ ! -d "${WD}/${s}/MPRAGE" ]; then

		mkdir ${WD}/${s}/MPRAGE

	fi

	cp ${enhance_raw}/${s}/SourceDICOMs/MPRAGE_1/* ${WD}/${s}/MPRAGE

	# get BOLD organized

	cd ${enhance_raw}/${s}/SourceDICOMs/

	i="1"
	for run_dir in $(ls -d TRSE* | sort -V); do
		
		if [ ! -d ${WD}/${s}/run${i} ]; then
			mkdir ${WD}/${s}/run${i}		
		fi

		cp ${run_dir}/* ${WD}/${s}/run${i}
		#if [ ! -e ${WD}/${s}/run${i}/run${i}_raw.nii.gz ]; then
		#	3dcopy ${enhance_raw}/${s}/PRE/epi/ep2d_neuro_64_TR1000_TRSEblock_${i}.nii.gz ${WD}/${s}/run${i}/run${i}_raw.nii.gz 
		#fi	

		i=$[$i+1]

	done


done







