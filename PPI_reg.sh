#!/bin/bash

# create PPI regressors. Follow AFNI and FSL's recommendation.

# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPICaveats
# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPIHowToRun
# http://afni.nimh.nih.gov/sscc/gangc/CD-CorrAna.html


WD='/home/despoB/kaihwang/TRSE/'
SCRIPTS='/home/despoB/kaihwang/TRSE/TRSE_scripts'

for s in 106; do

	#normalize EPI time-series
	cd $WD/$s/
	

	
	#create necessary files first 
	waver -dt 1 -GAM -inline 1@1 > ${WD}/${s}/GammaHR.1D
		
	
	for ROIs in FFA PPA; do #do two different ROIs.
		for conditions in relevant_face irrelevant_face categorize_face relevant_scene irrelevant_scene categorize_scene; do
			
			# create conditions stim time 
			if [ ! -e ${WD}/${s}/${conditions}_allruns.1D ]; then
				timing_tool.py -timing ${SCRIPTS}/${s}_${conditions}.txt \
				-timing_to_1D ${WD}/${s}/${conditions}_allruns.1D \
				-tr 1 \
				-stim_dur 0.5 \
				-min_frac 0.3 \
				-run_len 114 \
				-per_run -round_times 0.7		
			fi
			
			for run in $(grep -n [0-9] ${SCRIPTS}/${s}_${conditions}.txt | cut -f1 -d:); do #extract runs with this condition.
				
				#afni style gPPI (deconvolution)
				
				if [ ! -e ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_dt_t.1D ]; then
					#Step 1. Create seed time series: 3dmaskave -mask ROI -MyInput+orig > Seed.1D 
					3dmaskave -quiet -mask ${WD}/${s}/${ROIs}_indiv_ROI+tlrc ${WD}/${s}/run$(printf %d $run)/nswdkmt_run$(printf %d $run)_raw_6.nii.gz > ${WD}/${s}/${ROIs}_TS_run${run}_${conditions}.1D
					1dtranspose ${WD}/${s}/${ROIs}_TS_run${run}_${conditions}.1D ${WD}/${s}/${ROIs}_run${run}_TS_${conditions}_t.1D
					
					#Step 2. Detrend seed TS: 3dDetrend -polort ? -prefix SeedR Seed.1D; 
					3dDetrend -polort 2 -prefix ${WD}/${s}/${ROIs}_run${run}_TS_${conditions}_dt.1D ${WD}/${s}/${ROIs}_run${run}_TS_${conditions}_t.1D
					1dtranspose ${WD}/${s}/${ROIs}_run${run}_TS_${conditions}_dt.1D ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_dt_t.1D
					
					#Step 3. Run decovolution on the time-series. 			
					#3dTfitter -RHS ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_dt_t.1D -FALTUNG ${WD}/${s}/GammaHR.1D ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_NeuroTS.1D 0123 0
				fi	
				
				if [ ! -e ${WD}/${s}/stim_run${run}_${conditions}_gam.1D ]; then
					#Step 4. extract stimulus timing. create gPPI psycho-phys-regressor, create stimulus timing regressors.
					sed -n "${run} p" ${WD}/${s}/${conditions}_allruns.1D > ${WD}/${s}/tmp.1D
					1dtranspose ${WD}/${s}/tmp.1D ${WD}/${s}/stim_${conditions}_run${run}.1D
					waver -GAM -peak 1 -TR 1  -input ${WD}/${s}/stim_${conditions}_run${run}.1D -numout 114 > ${WD}/${s}/stim_run${run}_${conditions}_gam.1D
					#1deval -a ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_NeuroTS.1D\' -b ${WD}/${s}/stim_${conditions}_run${run}.1D -expr 'a*b' > ${WD}${s}/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D
					#waver -GAM -peak 1 -TR 1  -input ${WD}${s}/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D -numout 114 > ${WD}${s}/gPPI_run${run}_${ROIs}_TS_${conditions}.1D
				
				fi
				
				#fsl style gPPI (convolution)
				if [ ! -e ${WD}${s}/FSLgPPI_run${run}_${ROIs}_TS_${conditions}.1D ]; then  
					
					#Step 1. de-mean task regressor
					if [ ! -e ${WD}/${s}/stim_${conditions}_run${run}_dm.1D ]; then
						1d_tool.py -infile ${WD}/${s}/stim_${conditions}_run${run}.1D -demean -write ${WD}/${s}/stim_${conditions}_run${run}_dm.1D
					fi
					
					# step 2. convolve de-meaned regressor with HRF
					if [ ! -e ${WD}/${s}/stim_run${run}_${conditions}_dmgam.1D ]; then
						waver -GAM -peak 1 -TR 1  -input ${WD}/${s}/stim_${conditions}_run${run}_dm.1D -numout 114 > ${WD}/${s}/stim_run${run}_${conditions}_dmgam.1D
					fi
					
					# step 3. create PPI interaction regressor with demeaned and detrend ROI ts
					1deval -a ${WD}${s}/${ROIs}_run${run}_TS_${conditions}_dt_t.1D -b ${WD}/${s}/stim_run${run}_${conditions}_dmgam.1D -expr 'a*b' > ${WD}${s}/FSLgPPI_run${run}_${ROIs}_TS_${conditions}.1D
				
				fi
			done
		done 
	done
	
	#delete ones that don't make sense
	rm gPPI*FFA*_relevant*scene*
	rm gPPI*PPA*_relevant*face*
	rm gPPI*FFA*_irrelevant*scene*
	rm gPPI*PPA*_irrelevant*face*
	rm FSLgPPI*FFA*_relevant*scene*
	rm FSLgPPI*PPA*_relevant*face*
	rm FSLgPPI*FFA*_irrelevant*scene*
	rm FSLgPPI*PPA*_irrelevant*face*
	
	#Concat regressors
	cat $(ls ${WD}/${s}/FSLgPPI*_irrelevant* | sort -V) > ${WD}/${s}/RegFSLgPPI_irrelevant.1D
	cat $(ls ${WD}/${s}/FSLgPPI*_relevant* | sort -V) > ${WD}/${s}/RegFSLgPPI_relevant.1D
	#cat $(ls ${WD}/${s}/gPPI*_irrelevant* | sort -V) > ${WD}/${s}/Reg_irrelevant.1D
	#cat $(ls ${WD}/${s}/gPPI*_relevant* | sort -V) > ${WD}/${s}/Reg_relevant.1D
	cat $(ls ${WD}/${s}/*_relevant_*_gam.1D | sort -V) > ${WD}/${s}/stim_relevant.1D
	cat $(ls ${WD}/${s}/*irrelevant_*_gam.1D | sort -V) > ${WD}/${s}/stim_irrelevant.1D
	cat $(ls ${WD}/${s}/FFA_run*TS*irrelevant*dt*t.1D | sort -V) > ${WD}/${s}/FFA_ts.1D
	cat $(ls ${WD}/${s}/PPA_run*TS*irrelevant*dt*t.1D | sort -V) > ${WD}/${s}/PPA_ts.1D
	

	#orthogonalize regressors
	# if [ ! -e ${WD}/${s}/stim_ortho_irrelevant.1D ]; then
	# 	3dDetrend -prefix ${WD}/${s}/stim_ortho_irrelevant_tmp.1D -vector ${WD}/${s}/RegFSLgPPI_irrelevant.1D ${WD}/${s}/stim_irrelevant.1D\'
	# 	1dtranspose ${WD}/${s}/stim_ortho_irrelevant_tmp.1D ${WD}/${s}/stim_ortho_irrelevant.1D
	# fi
	
	# if [ ! -e ${WD}/${s}/stim_ortho_relevant.1D ]; then
	# 	3dDetrend -prefix ${WD}/${s}/stim_ortho_relevant_tmp.1D -vector ${WD}/${s}/RegFSLgPPI_relevant.1D ${WD}/${s}/stim_relevant.1D\'
	# 	1dtranspose ${WD}/${s}/stim_ortho_relevant_tmp.1D ${WD}/${s}/stim_ortho_relevant.1D
	# fi

	#cat $(ls ${WD}/${s}/stim_run${run}_irrelevant_gam.1D)
	# to get the runs
	Included_Runs=$(ls FSLgPPI*_irrelevant* | sort -V | grep -Eo 'run[0-9]{1,2}' | grep -Eo '[0-9]{1,2}')
	for run in $Included_Runs; do
		
		if [ ! -e ${WD}/${s}/preproced-EPI-${run}.nii.gz ]; then
			ln -s ${WD}/${s}/run${run}/nswdkmt_run${run}_raw_6.nii.gz ${WD}/${s}/preproced-EPI-${run}.nii.gz
		fi
		
		if [ ! -e ${WD}/${s}/run${run}-motpar.1D ]; then
			ln -s ${WD}/${s}/run${run}/motion.1D ${WD}/${s}/run${run}-motpar.1D
		fi
	
	done
	
	#create concatenation file
	#echo 1D: $(ls gPPI*_irrelevant* | grep -no 'gPPI' | grep -Eo '[0-9]{1,2}' | awk '{ print ($1-1)*114 }') > ${WD}/${s}/concat.1D
	
	#create concatenate NII file and motion regressors
	#3dTcat -prefix ${WD}/${s}/EPI-input $(ls *nii | sort -V)
	cat $(ls run*motpar.1D | sort -V) > ${WD}/${s}/Reg_motion.1D
	
	#Regression (afni style)
	# if [ ! -e 3dREML_PPI_Full_model_stats_cmd ]; then
	# 	# full PPI model,  PPI regressors + stim timing + FFA/PPA timeseries
	# 	3dDeconvolve -input $(ls preproced-EPI-*nii.gz | sort -V) \
	# 	-automask \
	# 	-polort A \
	# 	-num_stimts 12 \
	# 	-stim_file 1 ${WD}/${s}/Reg_irrelevant.1D -stim_label 1 irrelevant \
	# 	-stim_file 2 ${WD}/${s}/Reg_relevant.1D -stim_label 2 relevant \
	# 	-stim_file 3 ${WD}/${s}/stim_irrelevant.1D -stim_label 3 stimtime_irrelevant \
	# 	-stim_file 4 ${WD}/${s}/stim_relevant.1D -stim_label 4 stimtime_relevant \
	# 	-stim_file 5 ${WD}/${s}/FFA_ts.1D -stim_label 5 FFA_TS  \
	# 	-stim_file 6 ${WD}/${s}/PPA_ts.1D -stim_label 6 PPA_TS  \
	# 	-stim_file 7 ${WD}/${s}/Reg_motion.1D[0] -stim_label 7 motpar1 -stim_base 7 \
	# 	-stim_file 8 ${WD}/${s}/Reg_motion.1D[1] -stim_label 8 motpar2 -stim_base 8 \
	# 	-stim_file 9 ${WD}/${s}/Reg_motion.1D[2] -stim_label 9 motpar3 -stim_base 9 \
	# 	-stim_file 10 ${WD}/${s}/Reg_motion.1D[3] -stim_label 10 motpar4 -stim_base 10 \
	# 	-stim_file 11 ${WD}/${s}/Reg_motion.1D[4] -stim_label 11 motpar5 -stim_base 11 \
	# 	-stim_file 12 ${WD}/${s}/Reg_motion.1D[5] -stim_label 12 motpar6 -stim_base 12 \
	# 	-gltsym 'SYM: +1*irrelevant' -glt_label 1 gPPI_irrelevant \
	# 	-gltsym 'SYM: +1*relevant' -glt_label 2 gPPI_relevant \
	# 	-gltsym 'SYM: +1*irrelevant -1*relevant' -glt_label 3 gPPI_irrelevant-relevant \
	# 	-gltsym 'SYM: +1*stimtime_irrelevant' -glt_label 4 stimtime_irrelevant \
	# 	-gltsym 'SYM: +1*stimtime_relevant' -glt_label 5 stimtime_relevant \
	# 	-gltsym 'SYM: +1*stimtime_irrelevant -1*stimtime_relevant' -glt_label 6 stimtime_irrelevant-stimtime_relevant \
	# 	-fout \
	# 	-rout \
	# 	-tout \
	# 	-bucket PPI_Full_model_stats \
	# 	-x1D Full_model_design_mat \
	# 	-x1D_stop  
		
	# 	sed "s/-rout/-rout -automask/g" < PPI_Full_model_stats.REML_cmd> 3dREML_PPI_Full_model_stats_cmd
	# 	. 3dREML_PPI_Full_model_stats_cmd
	# fi

	# regression FSL style
	if [ ! -e 3dREML_FSLgPPI_Full_model_stats_cmd ]; then
	
		# full PPI model,  PPI regressors + stim timing + FFA/PPA timeseries
		3dDeconvolve -input $(ls preproced-EPI-*nii.gz | sort -V) \
		-automask \
		-polort A \
		-num_stimts 12 \
		-stim_file 1 ${WD}/${s}/RegFSLgPPI_irrelevant.1D -stim_label 1 irrelevant \
		-stim_file 2 ${WD}/${s}/RegFSLgPPI_relevant.1D -stim_label 2 relevant \
		-stim_file 3 ${WD}/${s}/stim_irrelevant.1D -stim_label 3 stimtime_irrelevant \
		-stim_file 4 ${WD}/${s}/stim_relevant.1D -stim_label 4 stimtime_relevant \
		-stim_file 5 ${WD}/${s}/FFA_ts.1D -stim_label 5 FFA_TS  \
		-stim_file 6 ${WD}/${s}/PPA_ts.1D -stim_label 6 PPA_TS  \
		-stim_file 7 ${WD}/${s}/Reg_motion.1D[0] -stim_label 7 motpar1 -stim_base 7 \
		-stim_file 8 ${WD}/${s}/Reg_motion.1D[1] -stim_label 8 motpar2 -stim_base 8 \
		-stim_file 9 ${WD}/${s}/Reg_motion.1D[2] -stim_label 9 motpar3 -stim_base 9 \
		-stim_file 10 ${WD}/${s}/Reg_motion.1D[3] -stim_label 10 motpar4 -stim_base 10 \
		-stim_file 11 ${WD}/${s}/Reg_motion.1D[4] -stim_label 11 motpar5 -stim_base 11 \
		-stim_file 12 ${WD}/${s}/Reg_motion.1D[5] -stim_label 12 motpar6 -stim_base 12 \
		-gltsym 'SYM: +1*irrelevant' -glt_label 1 gPPI_irrelevant \
		-gltsym 'SYM: +1*relevant' -glt_label 2 gPPI_relevant \
		-gltsym 'SYM: +1*irrelevant -1*relevant' -glt_label 3 gPPI_irrelevant-relevant \
		-gltsym 'SYM: +1*stimtime_irrelevant' -glt_label 4 stimtime_irrelevant \
		-gltsym 'SYM: +1*stimtime_relevant' -glt_label 5 stimtime_relevant \
		-gltsym 'SYM: +1*stimtime_irrelevant -1*stimtime_relevant' -glt_label 6 stimtime_irrelevant-stimtime_relevant \
		-fout \
		-rout \
		-tout \
		-bucket FSLgPPI_Full_model_stats \
		-x1D FSLgFull_model_design_mat \
		-x1D_stop  
		
		sed "s/-rout/-rout -automask/g" < FSLgPPI_Full_model_stats.REML_cmd> 3dREML_FSLgPPI_Full_model_stats_cmd
		. 3dREML_FSLgPPI_Full_model_stats_cmd	
	fi
	
	# regression with orthogonized regressors
	# if [ ! -e 3dREML_FSLgPPI_Ortho_model_stats_cmd ]; then
	
	# 	# full PPI model,  PPI regressors + stim timing + FFA/PPA timeseries
	# 	3dDeconvolve -input $(ls preproced-EPI-*nii.gz | sort -V) \
	# 	-automask \
	# 	-polort A \
	# 	-num_stimts 12 \
	# 	-stim_file 1 ${WD}/${s}/RegFSLgPPI_irrelevant.1D -stim_label 1 irrelevant \
	# 	-stim_file 2 ${WD}/${s}/RegFSLgPPI_relevant.1D -stim_label 2 relevant \
	# 	-stim_file 3 ${WD}/${s}/stim_ortho_irrelevant.1D -stim_label 3 stimtime_irrelevant \
	# 	-stim_file 4 ${WD}/${s}/stim_ortho_relevant.1D -stim_label 4 stimtime_relevant \
	# 	-stim_file 5 ${WD}/${s}/FFA_ts.1D -stim_label 5 FFA_TS  \
	# 	-stim_file 6 ${WD}/${s}/PPA_ts.1D -stim_label 6 PPA_TS  \
	# 	-stim_file 7 ${WD}/${s}/Reg_motion.1D[0] -stim_label 7 motpar1 -stim_base 7 \
	# 	-stim_file 8 ${WD}/${s}/Reg_motion.1D[1] -stim_label 8 motpar2 -stim_base 8 \
	# 	-stim_file 9 ${WD}/${s}/Reg_motion.1D[2] -stim_label 9 motpar3 -stim_base 9 \
	# 	-stim_file 10 ${WD}/${s}/Reg_motion.1D[3] -stim_label 10 motpar4 -stim_base 10 \
	# 	-stim_file 11 ${WD}/${s}/Reg_motion.1D[4] -stim_label 11 motpar5 -stim_base 11 \
	# 	-stim_file 12 ${WD}/${s}/Reg_motion.1D[5] -stim_label 12 motpar6 -stim_base 12 \
	# 	-gltsym 'SYM: +1*irrelevant' -glt_label 1 gPPI_irrelevant \
	# 	-gltsym 'SYM: +1*relevant' -glt_label 2 gPPI_relevant \
	# 	-gltsym 'SYM: +1*irrelevant -1*relevant' -glt_label 3 gPPI_irrelevant-relevant \
	# 	-gltsym 'SYM: +1*stimtime_irrelevant' -glt_label 4 stimtime_irrelevant \
	# 	-gltsym 'SYM: +1*stimtime_relevant' -glt_label 5 stimtime_relevant \
	# 	-gltsym 'SYM: +1*stimtime_irrelevant -1*stimtime_relevant' -glt_label 6 stimtime_irrelevant-stimtime_relevant \
	# 	-fout \
	# 	-rout \
	# 	-tout \
	# 	-bucket FSLgPPI_Ortho_model_stats \
	# 	-x1D FSLgOrtho_model_design_mat \
	# 	-x1D_stop  
		
	# 	sed "s/-rout/-rout -automask/g" < FSLgPPI_Ortho_model_stats.REML_cmd> 3dREML_FSLgPPI_Ortho_model_stats_cmd
	# 	. 3dREML_FSLgPPI_Ortho_model_stats_cmd	
	# fi

done