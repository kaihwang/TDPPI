#!/bin/bash

# script to extract Betas from ROIs

# create mask

WD='/home/despo/kaihwang/TRSETMS/'

cd /home/despo/kaihwang/TRSETMS/PPI_Group
rm Beta_Tha*
# first normalize the coefficeints and t-stats to MNI space
for s in 106 107 108 109 110 111 112 113 114 115 116 117; do
	3dmaskave -mask Tha_mask.nii.gz -q ${WD}/${s}/PRE/PPI/${s}_stimtime_irrelevant_coef_mni.nii.gz >> Beta_Tha_irrelevant
	3dmaskave -mask Tha_mask.nii.gz -q ${WD}/${s}/PRE/PPI/${s}_stimtime_relevant_coef_mni.nii.gz >> Beta_Tha_relevant

done