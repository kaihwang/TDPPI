#!/bin/bash
# script for group analysis.

# run group analysis
cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despoB/kaihwang/TRSE'

# gppi irre - rle
3dttest++ -prefix ttest_FSLgPPI_irrelevant-relevant_v_cat \
-setA irrelevant-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[66] \
-labelA irr-cat \
-setB rel-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[70] \
-labelB rel-cat \
-paired \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz



