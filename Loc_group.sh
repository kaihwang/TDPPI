#!/bin/bash
# script for group analysis of loclizer contrast

echo 'cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
3dMEMA -prefix /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Group_Face_v_Scene.nii.gz \
-cio \
-set faces-scenes \' > /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Locaizer_group_ana.sh

cd /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs

for s in $(ls -d *); do
	echo "$s /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/Localizer_stats_REML+tlrc[18] /home/despoB/kaihwang/TRSE/TRSEPPI/AllSubjs/$s/Localizer_stats_REML+tlrc[19] \\" \
	>> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Locaizer_group_ana.sh
done

echo '-mask /home/despoB/kaihwang/TRSE/TRSEPPI/overlap_mask/TRSE_80perOverlap_mask.nii.gz' >> /home/despoB/kaihwang/TRSE/TRSEPPI/Group/Locaizer_group_ana.sh

cd /home/despoB/kaihwang/TRSE/TRSEPPI/Group
ln -s /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_brain.nii template_brain.nii

. Locaizer_group_ana.sh 