#!/bin/bash

# script to organize TRSE dataset raw dicoms. Combining data from Taraz and Courtney

WD='/home/despoB/kaihwang/TRSE'
Taraz_Raw='/home/despoB/kaihwang/TRSETMS'
Courtney_Raw='/home/despo/reach/Aging_Rehab_Study/Analysis/reach_mri'


# organize Taraz's 
#107 108 109 110 111 112 113 114 115 116 117 118
for s in 106 ; do

	if [ ! -d "${WD}/${s}" ]; then

		mkdir ${WD}/${s}

	fi


	# get mprage organized

	if [ ! -d "${WD}/${s}/MPRAGE" ]; then

		mkdir ${WD}/${s}/MPRAGE

	fi

	if [ ! -e "${WD}/${s}/MPRAGE/mprage.nii.gz" ]; then

		3dcopy ${Taraz_Raw}/${s}/PRE/anatomical/anat.nii ${WD}/${s}/MPRAGE/mprage.nii.gz

	fi


	# get BOLD organized

	if 	[ ! -d "${WD}/${s}/Raw" ]; then

		mkdir ${WD}/${s}/Raw
		#ln -s ${Taraz_Raw}/${s}/PRE/*.tgz ${WD}/${s}/Raw/Raw.tgz

	fi	

	if [ ! -e ${WD}/${s}/Raw/Raw.tgz ]; then
		ln -s ${Taraz_Raw}/${s}/PRE/*.tgz ${WD}/${s}/Raw/Raw.tgz
		tar xf ${WD}/${s}/Raw/Raw.tgz -C ${WD}/${s}/Raw
		mv ${WD}/${s}/Raw/Despo_Lab*/* ${WD}/${s}/Raw
		rm -rf ${WD}/${s}/Raw/Despo_Lab*
	fi

	cd ${WD}/${s}/Raw

	i="1"
	for d in $(ls -d *TRSE* | sort -V); do
		mv ${d} run${i}
		i=$[$i+1]
	done



done



