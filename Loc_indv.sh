#!/bin/bash


WD='/home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs'
cd $WD

for s in $(/bin/ls -d *); do
	cd ${WD}/${s}/

	# fomd brik number with the face v house contrast
	brik_num=$(3dinfo -verb Localizer_stats_REML+tlrc | grep Faces-Scenes#0_Tstat | grep -o '#[0-9][0-9]' | grep -Eo [0-9]{2})

	# extract contrast
	rm face_v_house_tstat*
	3dTcat -prefix face_v_house_tstat Localizer_stats_REML+tlrc[$brik_num]

	# creat individual FFA mask
	rm *FFA*
	rm *PPA*
	3dcalc -a face_v_house_tstat+tlrc -b /home/despoB/kaihwang/TRSE/TDSigEI/ROIs/Group_FFA_mask.nii.gz \
	-expr 'a*b' -short -prefix FFAmasked.nii.gz
	3dmaskdump -mask FFAmasked.nii.gz -quiet FFAmasked.nii.gz | sort -k4 -n -r | head -n 255 | 3dUndump -master FFAmasked.nii.gz -ijk -prefix FFA_indiv_ROI.nii.gz stdin

	#3dmaxima -input face_FFAmasked+tlrc -min_dist 5 -spheres_1toN -out_rad 3 -prefix FFA_ROIs -thresh 1
	#3dcalc -a FFA_ROIs+tlrc -expr 'equals(a,1)' -prefix FFA_indiv_ROI

	# creat individual PPA mask
	3dcalc -a face_v_house_tstat+tlrc -b /home/despoB/kaihwang/TRSE/TDSigEI/ROIs/Group_PPA_mask.nii.gz \
	-expr 'isnegative(a*b)*b' -short -prefix PPAmasked.nii.gz
	3dmaskdump -mask PPAmasked.nii.gz -quiet PPAmasked.nii.gz | sort -k4 -n -r | head -n 255 | 3dUndump -master PPAmasked.nii.gz -ijk -prefix PPA_indiv_ROI.nii.gz stdin

	#3dmaxima -input house_PPAmasked+tlrc -min_dist 5 -neg_ext -spheres_1toN -out_rad 3 -prefix PPA_ROIs -thresh -1
	#3dcalc -a PPA_ROIs+tlrc -expr 'equals(a,1)' -prefix PPA_indiv_ROI
	3dmaskdump -mask /home/despoB/kaihwang/TRSE/TTD/ROIs/vismask.nii.gz -quiet Localizer_stats_REML+tlrc[1] | sort -k4 -n -r | head -n 1 | 3dUndump -master FFAmasked.nii.gz -srad 8 -ijk -prefix V1_indiv_ROI.nii.gz stdin

done