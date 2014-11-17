#!/bin/bash

# script to align aseg from freesurfer parcellation into functional space.

cd /home/despo/kaihwang/TRSETMS/FS_Subjects
SUBJECTS_DIR=$(pwd);

WD='/home/despo/kaihwang/TRSETMS/'

for s in 109; do
	
	#convert aseg and reorient to RPI. freesurfer has this wired RSP orientation convention....	
	cd $SUBJECTS_DIR/${s}/mri
	mri_convert aseg.mgz aseg.nii.gz
	mri_convert brain.mgz brain.nii.gz
	
	fslreorient2std brain.nii.gz brain.nii.gz
	fslreorient2std aseg.nii.gz aseg.nii.gz
	
	fast -g -o brain_fast brain.nii.gz
	fslmaths brain_fast_pve_2 -thr 0.5 -bin brain_fast_wmseg
	
	
	flirt -in brain.nii.gz -ref $WD/${s}/PRE/PPI/mc_target_b.nii.gz -out FSbrain_to_func -omat FS_brain_to_func_initial.mat -dof 6
	flirt -in brain.nii.gz -ref $WD/${s}/PRE/PPI/mc_target_b.nii.gz -out FSbrain_to_func -omat FS_brain_to_func.mat \
	-interp spline -wmseg brain_fast_wmseg \
	-cost bbr -init FS_brain_to_func_initial.mat -dof 6 -schedule ${FSLDIR}/etc/flirtsch/bbr.sch 
	
	
	flirt -in aseg.nii.gz -ref $WD/${s}/PRE/PPI/mc_target_b.nii.gz \
	-out $WD/${s}/PRE/PPI/aseg_align.nii.gz \
	-init FS_brain_to_func.mat -applyxfm -interp nearestneighbour

	3dcalc -a $WD/${s}/PRE/PPI/aseg_align.nii.gz -expr 'equals(a,10)+equals(a,49)' -prefix $WD/All_Masks/${s}_Thalamus.nii


done