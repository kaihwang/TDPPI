#!/bin/bash
# script for group analysis.

GroupWD='/home/despoB/kaihwang/TRSE/TRSEPPI/Group'
WD='/home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs'

#gPPI irrelevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_gPPI_irrelevant.nii.gz \
-cio \
-set irrelevantPPI \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[18] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[19] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant.sh
cd ${GroupWD}
. gPPI_irrelevant.sh



#gPPI relevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_gPPI_relevant.nii.gz \
-cio \
-set relevantPPI \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_relevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[22] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[23] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_relevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_relevant.sh
cd ${GroupWD}
. gPPI_relevant.sh


#gPPI irrelevant-relevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_gPPI_irrelevant-relevant.nii.gz \
-cio \
-set irrelevant-relevantPPI \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant-relevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[26] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[27] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant-relevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/gPPI_irrelevant-relevant.sh
cd ${GroupWD}
. gPPI_irrelevant-relevant.sh


#stim relevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_stim_relevant.nii.gz \
-cio \
-set relevantStim \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_relevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[34] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[35] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_relevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_relevant.sh
cd ${GroupWD}
. stim_relevant.sh


#stim irrelevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_stim_irrelevant.nii.gz \
-cio \
-set irrelevantStim \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[30] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[31] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant.sh
cd ${GroupWD}
. stim_irrelevant.sh


#stim irrelevant-relevant
echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_stim_irrelevant-relevant.nii.gz \
-cio \
-set irrelevant-relevantStim \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant-relevant.sh

cd ${WD}
for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[38] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/gPPI_Full_model_stats_REML+tlrc[39] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant-relevant.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/stim_irrelevant-relevant.sh
cd ${GroupWD}
. stim_irrelevant-relevant.sh


