#!/bin/bash
# script for group analysis.

# run group analysis
cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despoB/kaihwang/TRSE'

# gppi irre - rle
3dttest++ -prefix ttest_FSLgPPI_irrelevant-relevant_v_cat \
-setA irrelevant-cat \
-labelA irr-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[74] \
-setB rel-cat \
-labelB rel-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[78] \
-paired \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz



