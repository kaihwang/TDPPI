#!/bin/bash

#run preprocessMprage on subjects

WD='/home/despoB/kaihwang/TRSE'

for s in 107; do

	cd ${WD}/${s}/MPRAGE

	preprocessMprage -r MNI_2mm \
	-b "-R -S -B -f 0.05 -g -0.3" \
	-no_bias \
	-o ${s}_MNI_final.nii.gz -n mprage.nii.gz


done