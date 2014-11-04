#!/bin/bash

# script for alignment
# It looks like everything is in RPI! So no need for messy reorientation for now. 

WD='/home/despo/kaihwang/TRSETMS/'

for s in 111; do
	cd $WD/$s/PRE/PPI	
	
	cp $WD/$s/PRE/anatomical/anat.nii $WD/$s/PRE/PPI/anat.nii
	3dcopy $WD/$s/PRE/PPI/anat.nii $WD/$s/PRE/PPI/anat.nii.gz
	rm $WD/$s/PRE/PPI/anat.nii
	rm $WD/$s/PRE/PPI/*coef.nii.gz
	rm $WD/$s/PRE/PPI/*Tstat.nii.gz
	
	3dTstat -mean -prefix mc_target.nii.gz EPI-input+orig
	
	# bet the brain
	bet anat anat_b.nii.gz -R -S -B -f 0.05 -g -0.3
	bet mc_target.nii.gz mc_target_b.nii.gz
	
	#get tissue segmentation
	fast -g -o anat_b_fast anat_b.nii.gz
	fslmaths anat_b_fast_pve_2 -thr 0.5 -bin anat_b_fast_wmseg
	
	
	# func2struct
	flirt -in mc_target_b.nii.gz -ref anat_b.nii.gz -out func_to_struct -omat func_to_struct_init.mat -dof 6
	
	flirt -in mc_target_b.nii.gz -ref anat_b.nii.gz -out func_to_struct -omat func_to_struct.mat -interp spline -wmseg anat_b_fast_wmseg \
		    -cost bbr -init func_to_struct_init.mat -dof 6 -schedule ${FSLDIR}/etc/flirtsch/bbr.sch 
	
	convert_xfm -inverse -omat struct_to_func.mat func_to_struct.mat
	
	#to standard
	flirt -ref ${FSLDIR}/data/standard/MNI152_T1_2mm_brain -in anat_b.nii.gz -omat anat2mni_affine_trans.mat
	fnirt --in=anat.nii.gz --aff=anat2mni_affine_trans.mat --cout=anat2mni_nonlinear_trans --config=T1_2_MNI152_2mm
	applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=anat.nii.gz --warp=anat2mni_nonlinear_trans --out=anat_mni
	
	
	# transform functional data to standard
	applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=mc_target_b --warp=anat2mni_nonlinear_trans \
	--premat=func_to_struct.mat --out=mc_target_mni
	
	# extract subricks then normalize
	#3dinfo -verb Fullmodel_PPI_stats_REML+orig | grep -E 'gPPI_relevant#.*Coef' | grep -Eo 'sub-brick #[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'
	
	for contrasts in gPPI_irrelevant gPPI_relevant gPPI_irrelevant-relevant stimtime_relevant stimtime_irrelevant stimtime_irrelevant-stimtime_rel; do
		b=$(3dinfo -verb Fullmodel_PPI_stats_REML+orig | grep -E "${contrasts}#.*Coef" | grep -Eo 'sub-brick #[0-9]{1,2}' | grep -Eo '[0-9]{1,2}' | awk '{print $0}');
		brikNum=$(echo $b |cut -d" " -f1);
		3dTcat -prefix ${s}_${contrasts}_coef.nii.gz Fullmodel_PPI_stats_REML+orig[${brikNum}];		
		applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=${s}_${contrasts}_coef --warp=anat2mni_nonlinear_trans \
		--premat=func_to_struct.mat --out=${s}_${contrasts}_coef_mni
		
		b=$(3dinfo -verb Fullmodel_PPI_stats_REML+orig | grep -E "${contrasts}#.*Tstat" | grep -Eo 'sub-brick #[0-9]{1,2}' | grep -Eo '[0-9]{1,2}' | awk '{print $0}');
		brikNum=$(echo $b |cut -d" " -f1);
		3dTcat -prefix ${s}_${contrasts}_Tstat.nii.gz Fullmodel_PPI_stats_REML+orig[${brikNum}];
		applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=${s}_${contrasts}_Tstat --warp=anat2mni_nonlinear_trans \
		--premat=func_to_struct.mat --out=${s}_${contrasts}_Tstat_mni
		
	done
	
	
done