#!/bin/bash

#run preprocessMprage on subjects. for TRSE

WD='/home/despoB/kaihwang/TRSE/TRSEPPI/REACH'

for s in 107; do

	cd ${WD}/${s}/MPRAGE

	preprocessMprage -r MNI_2mm \
	-b "-R -S -B -f 0.1 -g 0" \
	-no_bias \
	-o ${s}_MNI_final.nii.gz -n mprage.nii.gz


done