#!/bin/bash


WD='/home/despoB/kaihwang/TRSE'
cd $WD

for s in $(ls -d 1*); do
	cd ${WD}/${s}/

	# fomd brik number with the face v house contrast
	brik_num=$(3dinfo -verb Localizer_stats_REML+tlrc | grep Faces-Scenes#0_Tstat | grep -o '#[0-9][0-9]' | grep -Eo [0-9]{2})

	# extract contrast
	3dTcat -prefix face_v_house_tstat Localizer_stats_REML+tlrc[$brik_num]

	# creat individual FFA mask
	3dcalc -a face_v_house_tstat+tlrc -b ../Group/Group_FFA_mask.nii.gz -expr 'a*b' -short -prefix face_FFAmasked
	3dmaxima -input face_FFAmasked+tlrc -min_dist 5 -spheres_1toN -out_rad 3 -prefix FFA_ROIs -thresh 1
	3dcalc -a FFA_ROIs+tlrc -expr 'equals(a,1)' -prefix FFA_indiv_ROI

	# creat individual PPA mask
	3dcalc -a face_v_house_tstat+tlrc -b ../Group/Group_PPA_mask.nii.gz -expr 'a*b' -short -prefix house_PPAmasked
	3dmaxima -input house_PPAmasked+tlrc -min_dist 5 -neg_ext -spheres_1toN -out_rad 3 -prefix PPA_ROIs -thresh -1
	3dcalc -a PPA_ROIs+tlrc -expr 'equals(a,1)' -prefix PPA_indiv_ROI

done