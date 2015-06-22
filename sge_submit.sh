#!/bin/bash

#for SGE jobs

#mkdir tmp;
SCRIPTS='/home/despoB/kaihwang/bin/TDPPI'

for dataset in RVR ENHANCE; do
	WD="/home/despoB/kaihwang/TRSE/TRSEPPI/${dataset}"
	cd ${WD}

	for Subject in $(ls -d *); do
		
		#if [ ! -e "${WD}/${Subject}/MPRAGE/${Subject}_MNI_final.nii.gz" ]; then
		#	sed "s/s in 107/s in ${Subject}/g; s/REACH/${dataset}/g " < ${SCRIPTS}/preproc_mprage_fromdcm.sh > ~/tmp/mprage_${Subject}.sh
		#	qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ~/tmp/mprage_${Subject}.sh  #-l mem_free=5G
		#fi	

		 for r in $(seq 1 1 20); do
			
		 	if [ ! -e "${WD}/${Subject}/run${r}/nswdkmt_functional_6.nii.gz" ]; then
		 		sed "s/s in 106/s in ${Subject}/g; s/run1/run${r}/g; s/REACH/${dataset}/g " < ${SCRIPTS}/preproc_functional_fromdicom.sh > ~/tmp/preprocFunc_${Subject}_${r}.sh 
		 		qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp ~/tmp/preprocFunc_${Subject}_${r}.sh   #-l mem_free=5G
		 	fi
		 done

	done
done


# for Subject in $(ls -d 1*) ; do

# 	if [ ! -e ${WD}/${Subject}/Localizer_stats.REML_cmd ]; then
# 		sed "s/s in 106/s in ${Subject}/g" < ${SCRIPTS}/loc_FFA_PPA.sh> ${SCRIPTS}/tmp/localize_FFA_PPA_${Subject}.sh
# 		qsub -V -M kaihwang -m e -l mem_free=12G -e ~/tmp -o ~/tmp ${SCRIPTS}/tmp/localize_FFA_PPA_${Subject}.sh
# 	fi	
# done


# for Subject in $(ls -d 1*) ; do

# 	if [ ! -e ${WD}/${Subject}/FSLgPPI_task_v_cat_stats_REML+tlrc.BRIK ]; then
# 		sed "s/s in 106/s in ${Subject}/g" < ${SCRIPTS}/PPI_cat.sh> ${SCRIPTS}/tmp/PPI_cat_${Subject}.sh
# 		qsub -V -M kaihwang -m e -l mem_free=9G -e ~/tmp -o ~/tmp ${SCRIPTS}/tmp/PPI_cat_${Subject}.sh
# 	fi	
# done
