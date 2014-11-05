#!/bin/bash

# script for group analysis.

WD='/home/despo/kaihwang/TRSETMS'


3dMEMA -prefix gPPI_irrelevant-relevant_groupANA_fullmodel \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/PRE/PPI/106_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_irrelevant-relevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_gPPI_irrelevant-relevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc gPPI_irrelevant-relevant_groupANA_fullmodel+orig 


3dMEMA -prefix gPPI_irrelevant_groupANA_fullmodel \
-cio \
-set irrelevant \
106 ${WD}/106/PRE/PPI/106_gPPI_irrelevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_gPPI_irrelevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_irrelevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_gPPI_irrelevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_irrelevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_gPPI_irrelevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_irrelevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_gPPI_irrelevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_irrelevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_gPPI_irrelevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_irrelevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_gPPI_irrelevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_irrelevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_gPPI_irrelevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_irrelevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_gPPI_irrelevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_irrelevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_gPPI_irrelevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_irrelevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_gPPI_irrelevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_irrelevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_gPPI_irrelevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_irrelevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_gPPI_irrelevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc gPPI_irrelevant_groupANA_fullmodel+orig 

3dMEMA -prefix gPPI_relevant_groupANA_fullmodel \
-cio \
-set relevant \
106 ${WD}/106/PRE/PPI/106_gPPI_relevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_gPPI_relevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_gPPI_relevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_gPPI_relevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_gPPI_relevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_gPPI_relevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_gPPI_relevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_gPPI_relevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_gPPI_relevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_gPPI_relevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_gPPI_relevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_gPPI_relevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_gPPI_relevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_gPPI_relevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_gPPI_relevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_gPPI_relevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_gPPI_relevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_gPPI_relevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_gPPI_relevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_gPPI_relevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_gPPI_relevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_gPPI_relevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_gPPI_relevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_gPPI_relevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc gPPI_relevant_groupANA_fullmodel+orig 

3dMEMA -prefix stimtime_relevant_groupANA_fullmodel \
-cio \
-set relevant \
106 ${WD}/106/PRE/PPI/106_stimtime_relevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_stimtime_relevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_stimtime_relevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_stimtime_relevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_stimtime_relevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_stimtime_relevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_stimtime_relevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_stimtime_relevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_stimtime_relevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_stimtime_relevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_stimtime_relevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_stimtime_relevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_stimtime_relevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_stimtime_relevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_stimtime_relevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_stimtime_relevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_stimtime_relevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_stimtime_relevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_stimtime_relevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_stimtime_relevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_stimtime_relevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_stimtime_relevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_stimtime_relevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_stimtime_relevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc stimtime_relevant_groupANA_fullmodel+orig 

3dMEMA -prefix stimtime_irrelevant_groupANA_fullmodel \
-cio \
-set irrelevant \
106 ${WD}/106/PRE/PPI/106_stimtime_irrelevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_stimtime_irrelevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_stimtime_irrelevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_stimtime_irrelevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_stimtime_irrelevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_stimtime_irrelevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_stimtime_irrelevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_stimtime_irrelevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_stimtime_irrelevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_stimtime_irrelevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_stimtime_irrelevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_stimtime_irrelevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_stimtime_irrelevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_stimtime_irrelevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_stimtime_irrelevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_stimtime_irrelevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_stimtime_irrelevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_stimtime_irrelevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_stimtime_irrelevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_stimtime_irrelevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_stimtime_irrelevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_stimtime_irrelevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_stimtime_irrelevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_stimtime_irrelevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc stimtime_irrelevant_groupANA_fullmodel+orig 

3dMEMA -prefix stimtime_irrelevant-relevant_groupANA_fullmodel \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/PRE/PPI/106_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/106/PRE/PPI/106_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
107 ${WD}/107/PRE/PPI/107_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/107/PRE/PPI/107_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
108 ${WD}/108/PRE/PPI/108_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/108/PRE/PPI/108_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
109 ${WD}/109/PRE/PPI/109_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/109/PRE/PPI/109_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
110 ${WD}/110/PRE/PPI/110_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/110/PRE/PPI/110_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
111 ${WD}/111/PRE/PPI/111_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/111/PRE/PPI/111_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
112 ${WD}/112/PRE/PPI/112_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/112/PRE/PPI/112_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
113 ${WD}/113/PRE/PPI/113_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/113/PRE/PPI/113_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
114 ${WD}/114/PRE/PPI/114_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/114/PRE/PPI/114_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
115 ${WD}/115/PRE/PPI/115_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/115/PRE/PPI/115_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
116 ${WD}/116/PRE/PPI/116_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/116/PRE/PPI/116_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
117 ${WD}/117/PRE/PPI/117_stimtime_irrelevant-relevant_coef_mni.nii.gz ${WD}/117/PRE/PPI/117_stimtime_irrelevant-relevant_Tstat_mni.nii.gz \
-mask /usr/local/fsl-5.0.6/data/standard/MNI152_T1_2mm_brain_mask.nii.gz \
-max_zeros 0.1
3drefit -view tlrc stimtime_irrelevant-relevant_groupANA_fullmodel+orig 

