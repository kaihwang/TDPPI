#!/bin/bash

#run preprocessFunctional on subjects. For TRSE

WD='/home/despoB/kaihwang/TRSE'



for s in 106; do

	mkdir /tmp/kh_${s}_run1

	cp ${WD}/${s}/run1/run1_raw.nii.gz /tmp/kh_${s}_run1/
	cd /tmp/kh_${s}_run1

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

	mv nswdkmt_run1_raw_6.nii.gz ${WD}/${s}/run1/
	mv motion_info ${WD}/${s}/run1/
	mv motion.par ${WD}/${s}/run1/motion.1D

	cd ${WD}/${s}/
	rm -rf /tmp/kh_${s}_run1/

done