#!/bin/bash

# script to organize TRSE dataset raw dicoms. Combining data from Taraz and Courtney

WD='/home/despoB/kaihwang/TRSE'
Taraz_Raw='/home/despoB/kaihwang/TRSETMS'
reach_Raw='/home/despo/reach/Aging_Rehab_Study/Analysis/reach_mri'

## orgnize reach 
#subjects: 1401 1402 1403 1404 1405 1406 1407 1408 1409 1411 1412 1413 1414 1415 1416 1417 1418 1419 1421 1422 1423 1426 1427 1429 1430 1431

for s in 1401 1402 1403 1404 1405 1406 1407 1408 1409 1411 1412 1413 1414 1415 1416 1417 1418 1419 1421 1422 1423 1426 1427 1429 1430 1431; do

	if [ ! -d "${WD}/${s}" ]; then
		mkdir ${WD}/${s}
	fi

	#organize raw
	if 	[ ! -d "${WD}/${s}/Raw" ]; then
		mkdir ${WD}/${s}/Raw
		#ln -s ${Taraz_Raw}/${s}/PRE/*.tgz ${WD}/${s}/Raw/Raw.tgz
	fi

	if 	[ ! -d "${WD}/${s}/Raw/MPRAGE" ]; then
		#mkdir ${WD}/${s}/Raw
		ln -s ${reach_Raw}/${s}/SourceDICOMs/MPRAGE ${WD}/${s}/Raw/MPRAGE
	fi

	i="1"
	for run_dir in $(ls -d ${reach_Raw}/${s}/SourceDICOMs/*TRSE* | sort -V); do

		if [ ! -d "${WD}/${s}/Raw/run${i}" ]; then
			ln -s ${run_dir} ${WD}/${s}/Raw/run${i}
		fi
		i=$[$i+1]
	done

	#create niftis from raw
	if 	[ ! -d "${WD}/${s}/MPRAGE" ]; then
		mkdir ${WD}/${s}/MPRAGE
	fi

	if [ ! -e "${WD}/${s}/MPRAGE/mprage.nii.gz" ]; then
		cd ${WD}/${s}/MPRAGE
		dcm2nii -d N -e N -f N -i N -n Y -o . ${WD}/${s}/Raw/MPRAGE/
		raw_nii=$(ls *.nii.gz)
		3dcopy $raw_nii mprage.nii.gz
		#rm $raw_nii
	fi

	cd ${WD}/${s}/Raw/
	for run_dir in $(ls -d run* | sort -V); do
		if 	[ ! -d "${WD}/${s}/${run_dir}" ]; then
			mkdir ${WD}/${s}/${run_dir}
		fi
	
		if [ ! -e ${WD}/${s}/${run_dir}/${run_dir}_raw.nii.gz ]; then
			cd ${WD}/${s}/${run_dir}/
			dcm2nii -d N -e N -f N -i N -n Y -o . ${WD}/${s}/Raw/${run_dir}/
			raw_nii=$(ls *.nii.gz)
			3dcopy $raw_nii ${run_dir}_raw.nii.gz
			rm $raw_nii
		fi		
	done

done