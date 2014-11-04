#!/bin/bash

# create PPI regressors. Follow AFNI and FSL's recommendation.

# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPICaveats
# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPIHowToRun
# http://afni.nimh.nih.gov/sscc/gangc/CD-CorrAna.html


WD='/home/despo/kaihwang/TRSETMS/'

for s in 117; do
	
	if [ ! -d "$WD/$s/PRE/PPI" ]; then
		mkdir $WD/$s/PRE/PPI
	fi
	
	cd $WD/$s/PRE/PPI
	rm *.1D
	rm EPI*
	rm *orig*
	
	# Steps from Gang Chen's webpage.
	
	#create necessary files first 
	waver -dt 1 -GAM -inline 1@1 > ${WD}/${s}/PRE/PPI/GammaHR.1D
	
	
	
	for ROIs in FFA PPA; do #do two different ROIs.
		for conditions in relevant_faces irrelevant_faces categorize_faces relevant_scenes irrelevant_scenes categorize_scenes; do
			
			# create this condition's stimulus timing
			timing_tool.py -timing ${WD}/${s}/PRE/behavior/${conditions}.txt -timing_to_1D ${WD}/${s}/PRE/PPI/${conditions}_allruns.1D -tr 1 -stim_dur 0.5 -min_frac 0.3 -run_len 114 -per_run -round_times 0.7
			
			
			for run in $(grep -n 0 ${WD}/${s}/PRE/behavior/${conditions}.txt | cut -f1 -d:); do #extract runs with this condition.
		
				#Step 1. Create seed time series: 3dmaskave -mask ROI -MyInput+orig > Seed.1D 
				3dmaskave -quiet -mask ${WD}/All_Masks/${s}_${ROIs}.nii ${WD}/${s}/PRE/epi/EPI-$(printf %02d $run).nii > ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}.1D
				1dtranspose ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}.1D ${WD}/${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_t.1D
				
				#Step 2. Detrend seed TS: 3dDetrend -polort ? -prefix SeedR Seed.1D; 
				3dDetrend -polort 2 -prefix ${WD}/${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_dt.1D ${WD}/${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_t.1D
				1dtranspose ${WD}/${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_dt.1D ${WD}${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_dt_t.1D
				
				#Step 3. Run decovolution on the time-series. 			
				3dTfitter -RHS ${WD}${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_dt_t.1D -FALTUNG ${WD}/${s}/PRE/PPI/GammaHR.1D ${WD}${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_NeuroTS.1D 0123 0
				
				#Step 4. extract stimulus timing. create gPPI psycho-phys-regressor, create stimulus timing regressors.
				sed -n "${run} p" ${WD}/${s}/PRE/PPI/${conditions}_allruns.1D > ${WD}/${s}/PRE/PPI/tmp.1D
				1dtranspose ${WD}/${s}/PRE/PPI/tmp.1D ${WD}/${s}/PRE/PPI/stim_${conditions}_run${run}.1D
				waver -GAM -peak 1 -TR 1  -input ${WD}/${s}/PRE/PPI/stim_${conditions}_run${run}.1D -numout 114 > ${WD}/${s}/PRE/PPI/stim_run${run}_${conditions}_gam.1D
				1deval -a ${WD}${s}/PRE/PPI/${ROIs}_run${run}_TS_${conditions}_NeuroTS.1D\' -b ${WD}/${s}/PRE/PPI/stim_${conditions}_run${run}.1D -expr 'a*b' > ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D
				waver -GAM -peak 10 -TR 1  -input ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D -numout 114 > ${WD}${s}/PRE/PPI/gPPI_run${run}_${ROIs}_TS_${conditions}.1D
			
			
			
			done
		done 
	done
	
	#delete ones that don't make sense
	rm gPPI*FFA*_relevant*scenes*
	rm gPPI*PPA*_relevant*faces*
	rm gPPI*FFA*_irrelevant*scenes*
	rm gPPI*PPA*_irrelevant*faces*

	
	
	#Step 5. Concat regressors
	cat $(ls ${WD}/${s}/PRE/PPI/gPPI*_irrelevant* | sort -V) > ${WD}/${s}/PRE/PPI/Reg_irrelevant.1D
	cat $(ls ${WD}/${s}/PRE/PPI/gPPI*_relevant* | sort -V) > ${WD}/${s}/PRE/PPI/Reg_relevant.1D
	cat $(ls *_relevant_*_gam.1D | sort -V) > ${WD}/${s}/PRE/PPI/stim_relevant.1D
	cat $(ls *irrelevant_*_gam.1D | sort -V) > ${WD}/${s}/PRE/PPI/stim_irrelevant.1D
	
	#cat $(ls ${WD}/${s}/PRE/PPI/stim_run${run}_irrelevant_gam.1D)
	# to get imaging the runs
	Included_Runs=$(ls gPPI*_irrelevant* | sort -V | grep -Eo 'run[0-9]{1,2}' | grep -Eo '[0-9]{1,2}')
	for run in $(ls gPPI*_irrelevant* | sort -V | grep -Eo 'run[0-9]{1,2}' | grep -Eo '[0-9]{1,2}'); do
		ln -s ${WD}/${s}/PRE/epi/EPI-$(printf %02d $run).nii ${WD}/${s}/PRE/PPI/EPI-$(printf %02d $run).nii
		ln -s ${WD}/${s}/PRE/epi/EPI-$(printf %02d $run)-motpar.1D ${WD}/${s}/PRE/PPI/EPI-$(printf %02d $run)-motpar.1D
	done
	
	#create concatenation file
	echo 1D: $(ls gPPI*_irrelevant* | grep -no 'gPPI' | grep -Eo '[0-9]{1,2}' | awk '{ print ($1-1)*114 }') > ${WD}/${s}/PRE/PPI/concat.1D
	
	#create concatenate NII file and motion regressors
	3dTcat -prefix ${WD}/${s}/PRE/PPI/EPI-input $(ls *nii | sort -V)
	cat $(ls EPI*motpar.1D | sort -V) > ${WD}/${s}/PRE/PPI/Reg_motion.1D
	
	#Step 6. regression analysis
	
	# model 1, just PPI regressors
	3dDeconvolve -input $(ls *nii | sort -V) \
	-automask \
	-polort A \
	-num_stimts 8 \
	-stim_file 1 ${WD}/${s}/PRE/PPI/Reg_irrelevant.1D -stim_label 1 irrelevant \
	-stim_file 2 ${WD}/${s}/PRE/PPI/Reg_relevant.1D -stim_label 2 relevant \
	-stim_file 3 ${WD}/${s}/PRE/PPI/Reg_motion.1D[0] -stim_label 3 motpar1 -stim_base 3 \
	-stim_file 4 ${WD}/${s}/PRE/PPI/Reg_motion.1D[1] -stim_label 4 motpar2 -stim_base 4 \
	-stim_file 5 ${WD}/${s}/PRE/PPI/Reg_motion.1D[2] -stim_label 5 motpar3 -stim_base 5 \
	-stim_file 6 ${WD}/${s}/PRE/PPI/Reg_motion.1D[3] -stim_label 6 motpar4 -stim_base 6 \
	-stim_file 7 ${WD}/${s}/PRE/PPI/Reg_motion.1D[4] -stim_label 7 motpar5 -stim_base 7 \
	-stim_file 8 ${WD}/${s}/PRE/PPI/Reg_motion.1D[5] -stim_label 8 motpar6 -stim_base 8 \
	-gltsym 'SYM: +1*irrelevant' -glt_label 1 gPPI_irrelevant \
	-gltsym 'SYM: +1*relevant' -glt_label 2 gPPI_relevant \
	-gltsym 'SYM: +1*irrelevant -1*relevant' -glt_label 3 gPPI_irrelevant-relevant \
	-fout \
	-rout \
	-tout \
	-bucket PPI_stats \
	-x1D design_mat \
	-x1D_stop  
	
	3dREMLfit -matrix design_mat.xmat.1D \
	-input EPI-input+orig \
	-automask \
	-fout -tout -rout -Rbuck PPI_stats_REML -verb
	
	# model 2,  PPI regressors + stim timing
	3dDeconvolve -input $(ls *nii | sort -V) \
	-automask \
	-polort A \
	-num_stimts 10 \
	-stim_file 1 ${WD}/${s}/PRE/PPI/Reg_irrelevant.1D -stim_label 1 irrelevant \
	-stim_file 2 ${WD}/${s}/PRE/PPI/Reg_relevant.1D -stim_label 2 relevant \
	-stim_file 3 ${WD}/${s}/PRE/PPI/stim_irrelevant.1D -stim_label 3 stimtime_irrelevant \
	-stim_file 4 ${WD}/${s}/PRE/PPI/stim_relevant.1D -stim_label 4 stimtime_relevant \
	-stim_file 5 ${WD}/${s}/PRE/PPI/Reg_motion.1D[0] -stim_label 5 motpar1 -stim_base 5 \
	-stim_file 6 ${WD}/${s}/PRE/PPI/Reg_motion.1D[1] -stim_label 6 motpar2 -stim_base 6 \
	-stim_file 7 ${WD}/${s}/PRE/PPI/Reg_motion.1D[2] -stim_label 7 motpar3 -stim_base 7 \
	-stim_file 8 ${WD}/${s}/PRE/PPI/Reg_motion.1D[3] -stim_label 8 motpar4 -stim_base 8 \
	-stim_file 9 ${WD}/${s}/PRE/PPI/Reg_motion.1D[4] -stim_label 9 motpar5 -stim_base 9 \
	-stim_file 10 ${WD}/${s}/PRE/PPI/Reg_motion.1D[5] -stim_label 10 motpar6 -stim_base 10 \
	-gltsym 'SYM: +1*irrelevant' -glt_label 1 gPPI_irrelevant \
	-gltsym 'SYM: +1*relevant' -glt_label 2 gPPI_relevant \
	-gltsym 'SYM: +1*irrelevant -1*relevant' -glt_label 3 gPPI_irrelevant-relevant \
	-gltsym 'SYM: +1*stimtime_irrelevant' -glt_label 4 stimtime_irrelevant \
	-gltsym 'SYM: +1*stimtime_relevant' -glt_label 5 stimtime_relevant \
	-gltsym 'SYM: +1*stimtime_irrelevant -1*stimtime_relevant' -glt_label 6 stimtime_irrelevant-stimtime_relevant \
	-fout \
	-rout \
	-tout \
	-bucket PPI_Fullmodel_stats \
	-x1D Fullmodel_design_mat \
	-x1D_stop  
	
	3dREMLfit -matrix Fullmodel_design_mat.xmat.1D \
	-input EPI-input+orig \
	-automask \
	-fout -tout -rout -Rbuck Fullmodel_PPI_stats_REML -verb
	 

	
	#Step 7. Group analysis.
	# Gang Chen: My limited experience showed that running group analysis with individual subject beta and the corresponding t-test with 3dttest/3dttest++/3dMEMA is more favorable than the following alternative approach with correlation coefficients. So in case you want to go with correlation coefficient, here are the steps:
	
done