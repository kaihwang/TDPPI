#!/bin/bash

# create freesurfer subject dir

cd /home/despo/kaihwang/TRSETMS/FS_Subjects

SUBJECTS_DIR=$(pwd);



for s in 109; do

	recon-all -i /home/despo/kaihwang/TRSETMS/${s}/PRE/anatomical/anat.nii -all -subjid ${s}


done