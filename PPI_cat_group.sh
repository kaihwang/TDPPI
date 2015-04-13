#!/bin/bash
# script for group analysis.

# run group analysis
cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despoB/kaihwang/TRSE'

# gppi irre - rle
3dMEMA -prefix task_v_cat_FSLgPPI_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[42] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[43] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8


3dMEMA -prefix task_v_cat_FSLgPPI_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[46] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[47] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix task_v_cat_FSLgPPI_irrelevant-relevant_groupANA \
-cio \
-set irr-re \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[50] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[51] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix task_v_cat_FSLgPPI_irrelevant-categorize_groupANA \
-cio \
-set irrelevant-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[66] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[67] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8


3dMEMA -prefix task_v_cat_FSLgPPI_relevant-categorize_groupANA \
-cio \
-set relevant-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[70] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[71] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix fsltask_v_cat_stimtime_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[14] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[15] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix fsltask_v_cat_stimtime_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[10] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[11] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix fsltask_v_cat_stimtime_irrelevant-relevant_groupANA \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[62] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[63] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix fsltask_v_cat_stimtime_irrelevant-categorize_groupANA \
-cio \
-set irrelevant-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[74] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[75] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix fsltask_v_cat_stimtime_relevant-categorize_groupANA \
-cio \
-set relevant-cat \
106 ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/106/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
107 ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/107/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
108 ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/108/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
109 ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/109/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
110 ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/110/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
111 ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/111/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
112 ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/112/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
113 ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/113/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
114 ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/114/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
115 ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/115/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
116 ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/116/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
117 ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/117/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
118 ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/118/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1401 ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1401/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1402 ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1402/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1403 ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1403/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1404 ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1404/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1405 ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1405/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1406 ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1406/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1407 ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1407/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1408 ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1408/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1409 ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1409/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1411 ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1411/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1412 ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1412/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1413 ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1413/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1414 ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1414/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1415 ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1415/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1416 ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1416/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1417 ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1417/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1418 ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1418/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1419 ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1419/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1421 ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1421/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1422 ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1422/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1423 ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1423/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1426 ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1426/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1427 ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1427/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1429 ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1429/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1430 ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1430/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
1431 ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[78] ${WD}/1431/FSLgPPI_task_v_cat_stats_REML+tlrc[79] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8
