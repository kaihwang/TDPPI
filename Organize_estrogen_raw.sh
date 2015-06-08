#!/bin/bash

# script to organize the "enhance" TRSE dataset (from Tony Chen and Erica) raw dicoms. 


WD='/home/despoB/kaihwang/TRSE/TRSEPPI/ESTROGEN'
estrogen_raw='/home/despo/Estrogen_COMT/Analysis'


## organize estrogen's 
#subjects: 106 107 108 109 110 111 112 113 114 115 116 117 118
for s in 102 106 107 110 111 112 115 116 118 119 121 122 123 124 ; do

	if [ ! -d "${WD}/${s}" ]; then

		mkdir ${WD}/${s}

	fi
	
	if 	[ ! -d "${WD}/${s}/Raw" ]; then

	mkdir ${WD}/${s}/Raw
	#ln -s ${estrogen_Raw}/${s}/PRE/*.tgz ${WD}/${s}/Raw/Raw.tgz

	fi

	if [ ! -e ${WD}/${s}/Raw/Raw.tgz ]; then
		cp ${estrogen_Raw}/${s}*/*.tgz ${WD}/${s}/Raw/Raw.tgz
		tar xf ${WD}/${s}/Raw/Raw.tgz -C ${WD}/${s}/Raw
		mv ${WD}/${s}/Raw/Despo_Lab*/* ${WD}/${s}/Raw
		rm -rf ${WD}/${s}/Raw/Despo_Lab*
	fi

	# get mprage organized

	if [ ! -d "${WD}/${s}/MPRAGE" ]; then

		mkdir ${WD}/${s}/MPRAGE
	fi

	cp ${WD}/${s}/Raw/SourceDICOMs/MPRAGE*/* ${WD}/${s}/MPRAGE

	# get BOLD organized

	cd ${WD}/${s}/Raw/SourceDICOMs

	i="1"
	for run_dir in $(ls -d *TRSE* | sort -V); do
		
		if [ ! -d ${WD}/${s}/run${i} ]; then
			mkdir ${WD}/${s}/run${i}		
		fi

		cp ${run_dir}/* ${WD}/${s}/run${i}
		#if [ ! -e ${WD}/${s}/run${i}/run${i}_raw.nii.gz ]; then
		#	3dcopy ${estrogen_raw}/${s}/PRE/epi/ep2d_neuro_64_TR1000_TRSEblock_${i}.nii.gz ${WD}/${s}/run${i}/run${i}_raw.nii.gz 
		#fi	

		i=$[$i+1]

	done


done







