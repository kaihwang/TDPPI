#!/bin/bash
# script for group analysis on thalamus PPI

cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despoB/kaihwang/TRSE'

# gppi irre - rle
3dMEMA -prefix Full_model_FSLgPPI_Thalamus_irrelevant-relevant_groupANA \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
107 ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
108 ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
109 ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
110 ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
111 ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
112 ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
113 ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
114 ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
115 ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
116 ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
117 ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
118 ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1401 ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1402 ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1403 ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1404 ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1405 ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1406 ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1407 ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1408 ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1409 ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1411 ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1412 ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1413 ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1414 ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1415 ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1416 ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1417 ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1418 ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1419 ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1421 ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1422 ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1423 ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1426 ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1427 ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1429 ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1430 ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
1431 ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[30] ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[31] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8


3dMEMA -prefix Full_model_FSLgPPI_Thalamus_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
107 ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
108 ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
109 ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
110 ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
111 ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
112 ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
113 ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
114 ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
115 ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
116 ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
117 ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
118 ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1401 ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1402 ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1403 ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1404 ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1405 ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1406 ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1407 ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1408 ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1409 ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1411 ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1412 ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1413 ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1414 ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1415 ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1416 ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[22] ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1417 ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1418 ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1419 ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1421 ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1422 ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1423 ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1426 ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1427 ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1429 ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1430 ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
1431 ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[21] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

3dMEMA -prefix Full_model_FSLgPPI_Thalamus_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/106/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
107 ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/107/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
108 ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/108/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
109 ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/109/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
110 ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/110/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
111 ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/111/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
112 ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/112/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
113 ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/113/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
114 ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/114/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
115 ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/115/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
116 ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/116/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
117 ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/117/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
118 ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/118/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1401 ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1401/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1402 ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1402/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1403 ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1403/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1404 ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1404/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1405 ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1405/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1406 ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1406/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1407 ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1407/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1408 ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1408/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1409 ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1409/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1411 ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1411/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1412 ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1412/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1413 ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1413/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1414 ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1414/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1415 ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1415/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1416 ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1416/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1417 ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1417/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1418 ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1418/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1419 ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1419/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1421 ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1421/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1422 ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1422/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1423 ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1423/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1426 ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1426/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1427 ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1427/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1429 ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1429/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1430 ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1430/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
1431 ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[26] ${WD}/1431/FSLgPPI_Thalamus_Full_model_stats_REML+tlrc[27] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz \
-max_zeros 0.8

