#!/bin/bash

#run preprocessFunctional on subjects. For TRSE

WD='/home/despoB/kaihwang/TRSE/TRSEPPI/REACH'



for s in 106; do

	mkdir /tmp/kh_${s}_run1

	cp ${WD}/${s}/run1/*.dcm /tmp/kh_${s}_run1/
	cd /tmp/kh_${s}_run1

	#dcm_files=($(ls *.dcm))
	#dcm_file=${dcm_files[0]} 
	#slice_order=$(echo "$dcm_file" | python ~/bin/TDPPI/get_slice_order.py)

	preprocessFunctional \
	-startover \
	-cleanup \
	-despike \
	-mprage_bet ${WD}/${s}/MPRAGE/mprage_bet.nii.gz \
	-threshold 98_2 \
	-rescaling_method 100_voxelmean \
	-template_brain MNI_2mm \
	-func_struc_dof bbr \
	-warp_interpolation spline \
	-no_hp \
	-smoothing_kernel 6 \
	-warpcoef ${WD}/${s}/MPRAGE/mprage_warpcoef.nii.gz \
	-delete_dicom archive \
	-dicom "*.dcm"

	mv nswdkmt_*.nii.gz ${WD}/${s}/run1/
	mv motion_info ${WD}/${s}/run1/
	mv motion.par ${WD}/${s}/run1/motion.1D
	mv *.log  ${WD}/${s}/run1/
	mv .detect_sliceorder ${WD}/${s}/run1/slice_order
	mv .detect_tr ${WD}/${s}/run1/slice_order/TR
	
	cd ${WD}/${s}/
	rm -rf /tmp/kh_${s}_run1/

done
