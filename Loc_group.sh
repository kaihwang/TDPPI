#!/bin/bash
# script for group analysis.

WD='/home/despoB/kaihwang/TRSE'

3dMEMA -prefix ${WD}/Group/Group_Face_v_Scene.nii.gz \
-cio \
-set faces-scenes \
106 ${WD}/106/Localizer_stats_REML+tlrc[18] ${WD}/106/Localizer_stats_REML+tlrc[19] \
107 ${WD}/107/Localizer_stats_REML+tlrc[18] ${WD}/107/Localizer_stats_REML+tlrc[19] \
108 ${WD}/108/Localizer_stats_REML+tlrc[18] ${WD}/108/Localizer_stats_REML+tlrc[19] \
109 ${WD}/109/Localizer_stats_REML+tlrc[18] ${WD}/109/Localizer_stats_REML+tlrc[19] \
110 ${WD}/110/Localizer_stats_REML+tlrc[18] ${WD}/110/Localizer_stats_REML+tlrc[19] \
111 ${WD}/111/Localizer_stats_REML+tlrc[18] ${WD}/111/Localizer_stats_REML+tlrc[19] \
112 ${WD}/112/Localizer_stats_REML+tlrc[18] ${WD}/112/Localizer_stats_REML+tlrc[19] \
113 ${WD}/113/Localizer_stats_REML+tlrc[18] ${WD}/113/Localizer_stats_REML+tlrc[19] \
114 ${WD}/114/Localizer_stats_REML+tlrc[18] ${WD}/114/Localizer_stats_REML+tlrc[19] \
115 ${WD}/115/Localizer_stats_REML+tlrc[18] ${WD}/115/Localizer_stats_REML+tlrc[19] \
116 ${WD}/116/Localizer_stats_REML+tlrc[18] ${WD}/116/Localizer_stats_REML+tlrc[19] \
117 ${WD}/117/Localizer_stats_REML+tlrc[18] ${WD}/117/Localizer_stats_REML+tlrc[19] \
118 ${WD}/118/Localizer_stats_REML+tlrc[18] ${WD}/118/Localizer_stats_REML+tlrc[19] \
1401 ${WD}/1401/Localizer_stats_REML+tlrc[18] ${WD}/1401/Localizer_stats_REML+tlrc[19] \
1402 ${WD}/1402/Localizer_stats_REML+tlrc[18] ${WD}/1402/Localizer_stats_REML+tlrc[19] \
1403 ${WD}/1403/Localizer_stats_REML+tlrc[18] ${WD}/1403/Localizer_stats_REML+tlrc[19] \
1404 ${WD}/1404/Localizer_stats_REML+tlrc[18] ${WD}/1404/Localizer_stats_REML+tlrc[19] \
1405 ${WD}/1405/Localizer_stats_REML+tlrc[18] ${WD}/1405/Localizer_stats_REML+tlrc[19] \
1406 ${WD}/1406/Localizer_stats_REML+tlrc[18] ${WD}/1406/Localizer_stats_REML+tlrc[19] \
1407 ${WD}/1407/Localizer_stats_REML+tlrc[18] ${WD}/1407/Localizer_stats_REML+tlrc[19] \
1408 ${WD}/1408/Localizer_stats_REML+tlrc[18] ${WD}/1408/Localizer_stats_REML+tlrc[19] \
1409 ${WD}/1409/Localizer_stats_REML+tlrc[18] ${WD}/1409/Localizer_stats_REML+tlrc[19] \
1411 ${WD}/1411/Localizer_stats_REML+tlrc[18] ${WD}/1411/Localizer_stats_REML+tlrc[19] \
1412 ${WD}/1412/Localizer_stats_REML+tlrc[18] ${WD}/1412/Localizer_stats_REML+tlrc[19] \
1413 ${WD}/1413/Localizer_stats_REML+tlrc[18] ${WD}/1413/Localizer_stats_REML+tlrc[19] \
1414 ${WD}/1414/Localizer_stats_REML+tlrc[18] ${WD}/1414/Localizer_stats_REML+tlrc[19] \
1415 ${WD}/1415/Localizer_stats_REML+tlrc[18] ${WD}/1415/Localizer_stats_REML+tlrc[19] \
1416 ${WD}/1416/Localizer_stats_REML+tlrc[18] ${WD}/1416/Localizer_stats_REML+tlrc[19] \
1417 ${WD}/1417/Localizer_stats_REML+tlrc[18] ${WD}/1417/Localizer_stats_REML+tlrc[19] \
1418 ${WD}/1418/Localizer_stats_REML+tlrc[18] ${WD}/1418/Localizer_stats_REML+tlrc[19] \
1419 ${WD}/1419/Localizer_stats_REML+tlrc[18] ${WD}/1419/Localizer_stats_REML+tlrc[19] \
1421 ${WD}/1421/Localizer_stats_REML+tlrc[18] ${WD}/1421/Localizer_stats_REML+tlrc[19] \
1422 ${WD}/1422/Localizer_stats_REML+tlrc[18] ${WD}/1422/Localizer_stats_REML+tlrc[19] \
1423 ${WD}/1423/Localizer_stats_REML+tlrc[18] ${WD}/1423/Localizer_stats_REML+tlrc[19] \
1426 ${WD}/1426/Localizer_stats_REML+tlrc[18] ${WD}/1426/Localizer_stats_REML+tlrc[19] \
1427 ${WD}/1427/Localizer_stats_REML+tlrc[18] ${WD}/1427/Localizer_stats_REML+tlrc[19] \
1429 ${WD}/1429/Localizer_stats_REML+tlrc[18] ${WD}/1429/Localizer_stats_REML+tlrc[19] \
1430 ${WD}/1430/Localizer_stats_REML+tlrc[18] ${WD}/1430/Localizer_stats_REML+tlrc[19] \
1431 ${WD}/1431/Localizer_stats_REML+tlrc[18] ${WD}/1431/Localizer_stats_REML+tlrc[19] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_face_mask_2mm.nii \
-max_zeros 0.1
