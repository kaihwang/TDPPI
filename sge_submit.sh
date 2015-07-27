#!/bin/bash

#for SGE jobs

#mkdir tmp;
SCRIPTS='/home/despoB/kaihwang/bin/TDPPI'

# for dataset in TRSETMS_6; do #
# 	WD="/home/despoB/kaihwang/TRSE/TRSEPPI/${dataset}"
# 	cd ${WD}

# 	for Subject in 640; do #$(ls -d *)
		
# 		#if [ ! -e "${WD}/${Subject}/MPRAGE/${Subject}_MNI_final.nii.gz" ]; then
# 		#	sed "s/s in 107/s in ${Subject}/g; s/REACH/${dataset}/g " < ${SCRIPTS}/preproc_mprage_fromdcm.sh > ~/tmp/mprage_${Subject}.sh
# 		#	qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ~/tmp/mprage_${Subject}.sh  #-l mem_free=5G
# 		#fi	

# 		 for r in $(seq 1 1 20); do
			
# 		 	if [ ! -e "${WD}/${Subject}/run${r}/nswdkmt_functional_6.nii.gz" ]; then #
# 		 		sed "s/s in 106/s in ${Subject}/g; s/run1/run${r}/g; s/REACH/${dataset}/g " < ${SCRIPTS}/preproc_functional_fromdicom.sh > ~/tmp/preprocFunc_${Subject}_${r}.sh 
# 		 		qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ~/tmp/preprocFunc_${Subject}_${r}.sh   #-l mem_free=5G
# 		 	fi
# 		 done

# 	done
# done


WD='/home/despoB/TRSEPPI/TRSEPPI/AllSubjs'
cd ${WD}

# for Subject in $(ls -d *) ; do

# 	if [ ! -e ${WD}/${Subject}/Localizer_stats.REML_cmd ]; then
# 		sed "s/s in REPLACEME/s in ${Subject}/g" < ${SCRIPTS}/loc_FFA_PPA.sh> ~/tmp/loc${Subject}.sh
# 		qsub -V -M kaihwang -m e -l mem_free=12G -e ~/tmp -o ~/tmp ~/tmp/loc${Subject}.sh
# 	fi	
# done


for Subject in $(ls -d *) ; do

	if [ ! -e ${WD}/${Subject}/gPPI_Full_model_stats_REML+tlrc.HEAD ]; then
		sed "s/s in 1106/s in ${Subject}/g" < ${SCRIPTS}/PPI_reg.sh> ~/tmp/model${Subject}.sh
		qsub -l mem_free=9G -V -M kaihwang -m e -e ~/tmp -o ~/tmp ~/tmp/model${Subject}.sh 
	fi	
done

#-l mem_free=4G
