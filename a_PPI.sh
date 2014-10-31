#!/bin/bash

# overal PPI pipeline. Follow AFNI and FSL's recommendation.

# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPICaveats
# http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/PPIHowToRun
# http://afni.nimh.nih.gov/sscc/gangc/CD-CorrAna.html


WD='/home/despo/kaihwang/TRSETMS/'

for s in 106; do
	mkdir $WD/$s/PRE/PPI
	cd $WD/$s/PRE/PPI
	rm *.1D;
	
	# Steps from Gang Chen's webpage.
	
	#create necessary files first 
	waver -dt 1 -GAM -inline 1@1 > ${WD}/${s}/PRE/PPI/GammaHR.1D
	
	# get FFA from each conditions relevant conditions
	
	for ROIs in FFA PPA; do
		for conditions in relevant_faces irrelevant_faces categorize_faces relevant_scenes irrelevant_scenes categorize_scenes; do
			
			# create this condition's stimulus timing
			timing_tool.py -timing ${WD}/${s}/PRE/behavior/${conditions}.txt -timing_to_1D ${WD}/${s}/PRE/PPI/${conditions}_allruns.1D -tr 1 -stim_dur 0.5 -min_frac 0.3 -run_len 114 -per_run -round_times 0.7
			
			
			for run in $(grep -n 0 ${WD}/${s}/PRE/behavior/${conditions}.txt | cut -f1 -d:); do #extract runs with this condition.
		
				#Step 1. Create seed time series: 3dmaskave -mask ROI -MyInput+orig > Seed.1D 
				3dmaskave -quiet -mask ${WD}/All_Masks/${s}_${ROIs}.nii ${WD}/${s}/PRE/epi/EPI-$(printf %02d $run).nii > ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}.1D
				1dtranspose ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}.1D ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_t.1D
				
				#Step 2. Detrend seed TS: 3dDetrend -polort ? -prefix SeedR Seed.1D; 
				3dDetrend -polort 2 -prefix ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_dt.1D ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_t.1D
				1dtranspose ${WD}/${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_dt.1D ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_dt_t.1D
				
				#Step 3. Run decovolution on the time-series. 			
				3dTfitter -RHS ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_dt_t.1D -FALTUNG ${WD}/${s}/PRE/PPI/GammaHR.1D ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroTS.1D 0123 0
				
				#Step 4. extract stimulus timing. create gPPI psycho-phys-regressor
				sed -n "${run} p" ${WD}/${s}/PRE/PPI/${conditions}_allruns.1D > ${WD}/${s}/PRE/PPI/tmp.1D
				1dtranspose ${WD}/${s}/PRE/PPI/tmp.1D ${WD}/${s}/PRE/PPI/stim_${conditions}_run${run}.1D
				1deval -a ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroTS.1D\' -b ${WD}/${s}/PRE/PPI/stim_${conditions}_run${run}.1D -expr 'a*b' > ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D
				waver -GAM -peak 1 -TR 1  -input ${WD}${s}/PRE/PPI/${ROIs}_TS_run${run}_${conditions}_NeuroXStim.1D -numout 114 > ${WD}${s}/PRE/PPI/gPPI_${ROIs}_TS_run${run}_${conditions}.1D
			done
		done 
	done
	
		
	
	
	
	
	
	#Step 4. Obtain task regressor for gPPI, not task-interaction. Interaction will be modeled at the group level.
	# First create a 1D (one column) file, AvsBcoding.1D,  with 0's (at those TR's where neither condition A nor B occurred), 1's (at those TR's where condition A occurred), and -1's (at those TR's where condition B occurred). If you only consider one condition A, code condition with 1's and the baseline time point with -1's.
	# 1deval -a Seed_Neur.1D\' -b AvsBcoding.1D -expr 'a*b' > Inter_neu.1D

	# The interaction is created as
	# waver -GAM -peak 1 -TR ?  -input Inter_neu.1D -numout #TRs > Inter_ts.1D
	
	#Step 5. Concatenate the regressors if there are multiple runs
	# Run cat separately on Seed_ts.1D (final output from step(2)) and Inter_ts.1D (final output from step(4)), and use the 2 concatenated 1D files for the next step.
	
	#Step 6. Regressopm. use 3dDeconvolve and REMLfit..?
	
	#Step 7. Group analysis.
	# Gang Chen: My limited experience showed that running group analysis with individual subject beta and the corresponding t-test with 3dttest/3dttest++/3dMEMA is more favorable than the following alternative approach with correlation coefficients. So in case you want to go with correlation coefficient, here are the steps:
	
done