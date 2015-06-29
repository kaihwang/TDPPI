#!/bin/bash

#to calculate overlap mask

WD='/home/despoB/kaihwang/TRSE/TRSEPPI'
cd ${WD}

for group in ENHANCE RVR ESTROGEN; do
	cd ${WD}/${group}
	for Subject in $(ls -d *); do
		for run in $(seq 1 1 20); do
			3dTcat -prefix ${WD}/overlap_mask/${group}_${Subject}_run${run}.nii.gz ${WD}/${group}/${Subject}/run${run}/nswdk*_functional_6.nii.gz[0] 
		done
	done
done


for group in REACH TRSETMS_1 TRSETME_6; do
	cd ${WD}/${group}
	for Subject in $(ls -d *); do
		for run in $(seq 1 1 20); do
			3dTcat -prefix ${WD}/overlap_mask/${group}_${Subject}_run${run}.nii.gz ${WD}/${group}/${Subject}/run${run}/nswdk*_run${run}_raw_6.nii.gz[0] 
		done
	done

done