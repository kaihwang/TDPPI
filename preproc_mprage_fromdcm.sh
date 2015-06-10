#!/bin/bash

#run preprocessMprage on subjects. for TRSE

WD='/home/despoB/kaihwang/TRSE/TRSEPPI/REACH'

for s in 107; do

	cd ${WD}/${s}/MPRAGE

	preprocessMprage -r MNI_2mm \
	-b "-R -S -B -f 0.05 -g -0.3" \
	-d archive \
	-o ${s}_MNI_final.nii.gz -p "*.dcm"


done

# preprocessMprage -r MNI_2mm -o ${s}_MNI_final.nii.gz -p "*.dcm" -d archive