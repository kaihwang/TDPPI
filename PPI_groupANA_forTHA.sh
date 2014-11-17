#!/bin/bash
# script for group analysis.
WD='/home/despo/kaihwang/TRSETMS/'


# first normalize the coefficeints and t-stats to MNI space
for s in 106 107 108 109 110 111 112 113 114 115 116 117; do

cd $WD/$s/PRE/PPI	
	
	#rm *mni_reducedmodel.nii.gz
	for contrasts in gPPI_irrelevant gPPI_relevant gPPI_irrelevant-relevant; do
		b=$(3dinfo -verb Full_model_PPI_stats_REML_Thalamus+orig | grep -E "${contrasts}#.*Coef" | grep -Eo 'sub-brick #[0-9]{1,2}' | grep -Eo '[0-9]{1,2}' | awk '{print $0}');
		brikNum=$(echo $b |cut -d" " -f1);
		
		#rm ${s}_${contrasts}_coef_reducedmodel.nii.gz
		3dTcat -prefix ${s}_${contrasts}_coef_fullmodel_thalamus.nii.gz Full_model_PPI_stats_REML_Thalamus+orig[${brikNum}];		
		applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=${s}_${contrasts}_coef_fullmodel_thalamus --warp=anat2mni_nonlinear_trans \
		--premat=func_to_struct.mat --out=${s}_${contrasts}_coef_mni_fullmodel_thalamus
		
		b=$(3dinfo -verb Full_model_PPI_stats_REML_Thalamus+orig | grep -E "${contrasts}#.*Tstat" | grep -Eo 'sub-brick #[0-9]{1,2}' | grep -Eo '[0-9]{1,2}' | awk '{print $0}');
		brikNum=$(echo $b |cut -d" " -f1);
		
		#rm ${s}_${contrasts}_Tstat_reducedmodel.nii.gz
		3dTcat -prefix ${s}_${contrasts}_Tstat_fullmodel_thalamus.nii.gz Full_model_PPI_stats_REML_Thalamus+orig[${brikNum}];
		applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=${s}_${contrasts}_Tstat_fullmodel_thalamus --warp=anat2mni_nonlinear_trans \
		--premat=func_to_struct.mat --out=${s}_${contrasts}_Tstat_mni_fullmodel_thalamus
		
	done
	
	
done

# run group analysis
cd /home/despo/kaihwang/TRSETMS/PPI_Group
WD='/home/despo/kaihwang/TRSETMS'


3dMEMA -prefix Thalamus_Full_model_gPPI_irrelevant-relevant_groupANA \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/PRE/PPI/106_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/106/PRE/PPI/106_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/107/PRE/PPI/107_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/108/PRE/PPI/108_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/109/PRE/PPI/109_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/110/PRE/PPI/110_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/111/PRE/PPI/111_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/112/PRE/PPI/112_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/113/PRE/PPI/113_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/114/PRE/PPI/114_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/115/PRE/PPI/115_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/116/PRE/PPI/116_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_irrelevant-relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/117/PRE/PPI/117_gPPI_irrelevant-relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc Thalamus_Full_model_gPPI_irrelevant-relevant_groupANA+orig 


3dMEMA -prefix Thalamus_Full_model_gPPI_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/PRE/PPI/106_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/106/PRE/PPI/106_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/107/PRE/PPI/107_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/108/PRE/PPI/108_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/109/PRE/PPI/109_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/110/PRE/PPI/110_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/111/PRE/PPI/111_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/112/PRE/PPI/112_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/113/PRE/PPI/113_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/114/PRE/PPI/114_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/115/PRE/PPI/115_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/116/PRE/PPI/116_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_irrelevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/117/PRE/PPI/117_gPPI_irrelevant_Tstat_mni_fullmodel_thalamus.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc Thalamus_Full_model_gPPI_irrelevant_groupANA+orig 

3dMEMA -prefix Thalamus_Full_model_gPPI_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/PRE/PPI/106_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/106/PRE/PPI/106_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/107/PRE/PPI/107_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/108/PRE/PPI/108_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/109/PRE/PPI/109_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/110/PRE/PPI/110_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/111/PRE/PPI/111_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/112/PRE/PPI/112_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/113/PRE/PPI/113_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/114/PRE/PPI/114_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/115/PRE/PPI/115_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/116/PRE/PPI/116_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_relevant_coef_mni_fullmodel_thalamus.nii.gz ${WD}/117/PRE/PPI/117_gPPI_relevant_Tstat_mni_fullmodel_thalamus.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc Thalamus_Full_model_gPPI_relevant_groupANA+orig 

