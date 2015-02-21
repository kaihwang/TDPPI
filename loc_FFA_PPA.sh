#!/bin/bash
# script to localize FFA and PPA

WD='/home/despoB/kaihwang/TRSE/'
SCRIPTS='/home/despoB/kaihwang/TRSE/TRSE_scripts'


for s in 106; do
	cd ${WD}/${s}/

	# first concat different runs
	#3dTcat -prefix ${WD}/${s}/EPI-input $(ls ${WD}/${s}/run*/nswdk* | sort -V)

	#creat stimulus timing and concat regressors
	for conditions in relevant_face irrelevant_face categorize_face relevant_scene irrelevant_scene categorize_scene both_face both_scene; do
		timing_tool.py -timing ${SCRIPTS}/${s}_${conditions}.txt \
		-timing_to_1D ${WD}/${s}/${conditions}_allruns.1D \
		-tr 1 \
		-stim_dur 0.5 \
		-min_frac 0.3 \
		-run_len 114 \
		-per_run -round_times 0.7


		for run in $(grep -n 0 ${SCRIPTS}/${s}_${conditions}.txt | cut -f1 -d:); do

			sed -n "${run} p" ${WD}/${s}/${conditions}_allruns.1D > ${WD}/${s}/tmp.1D
			1dtranspose ${WD}/${s}/tmp.1D ${WD}/${s}/stim_${conditions}_run${run}.1D
			waver -GAM -peak 1 -TR 1  -input ${WD}/${s}/stim_${conditions}_run${run}.1D -numout 114 > ${WD}/${s}/stim_${conditions}_run${run}_gam.1D
		done
	done

	# create regressors
	cat $(ls ${WD}/${s}/*_face_*_gam.1D| sort -k4 -t_ -V) > ${WD}/${s}/Face_gam.1D
	cat $(ls ${WD}/${s}/*_scene_*_gam.1D| sort -k4 -t_ -V) > ${WD}/${s}/Scene_gam.1D
	cat $(ls ${WD}/${s}/run*/motion.1D | sort -V) > ${WD}/${s}/Motion_allruns.1D

	3dDeconvolve -input $(ls run*/ns* | sort -V) \
	-automask \
	-polort A \
	-num_stimts 8 \
	-stim_file 1 ${WD}/${s}/Face_gam.1D -stim_label 1 Faces \
	-stim_file 2 ${WD}/${s}/Scene_gam.1D -stim_label 2 Scenes \
	-stim_file 3 ${WD}/${s}/Motion_allruns.1D[0] -stim_label 3 motpar1 -stim_base 3 \
	-stim_file 4 ${WD}/${s}/Motion_allruns.1D[1] -stim_label 4 motpar2 -stim_base 4 \
	-stim_file 5 ${WD}/${s}/Motion_allruns.1D[2] -stim_label 5 motpar3 -stim_base 5 \
	-stim_file 6 ${WD}/${s}/Motion_allruns.1D[3] -stim_label 6 motpar4 -stim_base 6 \
	-stim_file 7 ${WD}/${s}/Motion_allruns.1D[4] -stim_label 7 motpar5 -stim_base 7 \
	-stim_file 8 ${WD}/${s}/Motion_allruns.1D[5] -stim_label 8 motpar6 -stim_base 8 \
	-gltsym 'SYM: +1*Faces' -glt_label 1 Faces \
	-gltsym 'SYM: +1*Scenes' -glt_label 2 Scenes \
	-gltsym 'SYM: +1*Faces -1*Scenes' -glt_label 3 Faces-Scenes \
	-fout \
	-rout \
	-tout \
	-bucket Localizer_stats \
	-x1D Localizer_design_mat \
	-x1D_stop  
	
	sed "s/-rout/-rout -automask/g" < Localizer_stats.REML_cmd> 3dREML_localizer_automask_cmd
	. 3dREML_localizer_automask_cmd


done