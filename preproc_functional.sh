#!/bin/bash

#run preprocessFunctional on subjects. For TRSE

WD='/home/despoB/kaihwang/TRSE'



for s in 106; do

	cd ${WD}/${s}/run1/

	preprocessFunctional \
	-cleanup \
	-despike \
	-mprage_bet ${WD}/${s}/MPRAGE/mprage_bet.nii.gz \
	-tr 1 \
	-threshold 98_2 \
	-rescaling_method 100_voxelmean \
	-template_brain MNI_2mm \
	-func_struc_dof bbr \
	-warp_interpolation spline \
	-no_hp \
	-smoothing_kernel 6 \
	-slice_acquisition interleaved \
	-warpcoef ${WD}/${s}/MPRAGE/mprage_warpcoef.nii.gz \
	-4d run1_raw.nii.gz

done