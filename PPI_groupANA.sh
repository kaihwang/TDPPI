#!/bin/bash
# script for group analysis.

# run group analysis
cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despo/kaihwang/TRSE'

# gppi irre - rle
3dMEMA -prefix Full_model_gPPI_irrelevant-relevant_groupANA \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[34] ${WD}/106/PPI_Full_model_stats_REML+tlrc[35] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[34] ${WD}/107/PPI_Full_model_stats_REML+tlrc[35] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[34] ${WD}/108/PPI_Full_model_stats_REML+tlrc[35] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[34] ${WD}/109/PPI_Full_model_stats_REML+tlrc[35] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[34] ${WD}/110/PPI_Full_model_stats_REML+tlrc[35] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[34] ${WD}/111/PPI_Full_model_stats_REML+tlrc[35] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[34] ${WD}/112/PPI_Full_model_stats_REML+tlrc[35] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[34] ${WD}/113/PPI_Full_model_stats_REML+tlrc[35] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[34] ${WD}/114/PPI_Full_model_stats_REML+tlrc[35] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[34] ${WD}/115/PPI_Full_model_stats_REML+tlrc[35] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[34] ${WD}/116/PPI_Full_model_stats_REML+tlrc[35] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[34] ${WD}/117/PPI_Full_model_stats_REML+tlrc[35] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[34] ${WD}/118/PPI_Full_model_stats_REML+tlrc[35] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[35] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[35] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[35] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[35] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[35] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[35] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[35] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[35] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[35] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[35] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[35] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[35] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[35] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[35] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[35] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[35] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[35] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[35] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[35] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[35] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[35] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[35] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[35] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[35] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[35] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[34] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[35] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1


3dMEMA -prefix Full_model_gPPI_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[26] ${WD}/106/PPI_Full_model_stats_REML+tlrc[27] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[26] ${WD}/107/PPI_Full_model_stats_REML+tlrc[27] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[26] ${WD}/108/PPI_Full_model_stats_REML+tlrc[27] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[26] ${WD}/109/PPI_Full_model_stats_REML+tlrc[27] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[26] ${WD}/110/PPI_Full_model_stats_REML+tlrc[27] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[26] ${WD}/111/PPI_Full_model_stats_REML+tlrc[27] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[26] ${WD}/112/PPI_Full_model_stats_REML+tlrc[27] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[26] ${WD}/113/PPI_Full_model_stats_REML+tlrc[27] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[26] ${WD}/114/PPI_Full_model_stats_REML+tlrc[27] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[26] ${WD}/115/PPI_Full_model_stats_REML+tlrc[27] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[26] ${WD}/116/PPI_Full_model_stats_REML+tlrc[27] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[26] ${WD}/117/PPI_Full_model_stats_REML+tlrc[27] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[26] ${WD}/118/PPI_Full_model_stats_REML+tlrc[27] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[27] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[27] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[27] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[27] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[27] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[27] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[27] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[27] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[27] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[27] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[27] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[27] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[27] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[27] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[27] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[27] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[27] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[27] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[27] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[27] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[27] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[27] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[27] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[27] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[27] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[26] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[27] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1

3dMEMA -prefix Full_model_gPPI_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[30] ${WD}/106/PPI_Full_model_stats_REML+tlrc[31] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[30] ${WD}/107/PPI_Full_model_stats_REML+tlrc[31] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[30] ${WD}/108/PPI_Full_model_stats_REML+tlrc[31] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[30] ${WD}/109/PPI_Full_model_stats_REML+tlrc[31] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[30] ${WD}/110/PPI_Full_model_stats_REML+tlrc[31] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[30] ${WD}/111/PPI_Full_model_stats_REML+tlrc[31] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[30] ${WD}/112/PPI_Full_model_stats_REML+tlrc[31] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[30] ${WD}/113/PPI_Full_model_stats_REML+tlrc[31] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[30] ${WD}/114/PPI_Full_model_stats_REML+tlrc[31] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[30] ${WD}/115/PPI_Full_model_stats_REML+tlrc[31] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[30] ${WD}/116/PPI_Full_model_stats_REML+tlrc[31] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[30] ${WD}/117/PPI_Full_model_stats_REML+tlrc[31] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[30] ${WD}/118/PPI_Full_model_stats_REML+tlrc[31] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[31] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[31] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[31] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[31] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[31] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[31] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[31] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[31] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[31] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[31] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[31] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[31] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[31] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[31] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[31] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[31] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[31] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[31] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[31] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[31] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[31] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[31] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[31] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[31] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[31] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[30] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[31] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1

3dMEMA -prefix Full_model_stimtime_relevant_groupANA \
-cio \
-set relevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[14] ${WD}/106/PPI_Full_model_stats_REML+tlrc[15] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[14] ${WD}/107/PPI_Full_model_stats_REML+tlrc[15] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[14] ${WD}/108/PPI_Full_model_stats_REML+tlrc[15] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[14] ${WD}/109/PPI_Full_model_stats_REML+tlrc[15] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[14] ${WD}/110/PPI_Full_model_stats_REML+tlrc[15] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[14] ${WD}/111/PPI_Full_model_stats_REML+tlrc[15] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[14] ${WD}/112/PPI_Full_model_stats_REML+tlrc[15] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[14] ${WD}/113/PPI_Full_model_stats_REML+tlrc[15] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[14] ${WD}/114/PPI_Full_model_stats_REML+tlrc[15] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[14] ${WD}/115/PPI_Full_model_stats_REML+tlrc[15] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[14] ${WD}/116/PPI_Full_model_stats_REML+tlrc[15] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[14] ${WD}/117/PPI_Full_model_stats_REML+tlrc[15] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[14] ${WD}/118/PPI_Full_model_stats_REML+tlrc[15] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[15] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[15] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[15] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[15] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[15] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[15] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[15] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[15] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[15] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[15] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[15] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[15] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[15] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[15] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[15] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[15] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[15] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[15] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[15] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[15] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[15] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[15] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[15] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[15] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[15] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[14] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[15] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1

3dMEMA -prefix Full_model_stimtime_irrelevant_groupANA \
-cio \
-set irrelevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[10] ${WD}/106/PPI_Full_model_stats_REML+tlrc[11] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[10] ${WD}/107/PPI_Full_model_stats_REML+tlrc[11] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[10] ${WD}/108/PPI_Full_model_stats_REML+tlrc[11] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[10] ${WD}/109/PPI_Full_model_stats_REML+tlrc[11] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[10] ${WD}/110/PPI_Full_model_stats_REML+tlrc[11] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[10] ${WD}/111/PPI_Full_model_stats_REML+tlrc[11] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[10] ${WD}/112/PPI_Full_model_stats_REML+tlrc[11] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[10] ${WD}/113/PPI_Full_model_stats_REML+tlrc[11] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[10] ${WD}/114/PPI_Full_model_stats_REML+tlrc[11] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[10] ${WD}/115/PPI_Full_model_stats_REML+tlrc[11] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[10] ${WD}/116/PPI_Full_model_stats_REML+tlrc[11] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[10] ${WD}/117/PPI_Full_model_stats_REML+tlrc[11] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[10] ${WD}/118/PPI_Full_model_stats_REML+tlrc[11] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[11] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[11] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[11] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[11] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[11] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[11] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[11] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[11] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[11] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[11] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[11] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[11] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[11] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[11] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[11] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[11] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[11] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[11] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[11] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[11] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[11] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[11] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[11] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[11] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[11] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[10] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[11] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1

3dMEMA -prefix Full_model_stimtime_irrelevant-relevant_groupANA \
-cio \
-set irrelevant-relevant \
106 ${WD}/106/PPI_Full_model_stats_REML+tlrc[46] ${WD}/106/PPI_Full_model_stats_REML+tlrc[47] \
107 ${WD}/107/PPI_Full_model_stats_REML+tlrc[46] ${WD}/107/PPI_Full_model_stats_REML+tlrc[47] \
108 ${WD}/108/PPI_Full_model_stats_REML+tlrc[46] ${WD}/108/PPI_Full_model_stats_REML+tlrc[47] \
109 ${WD}/109/PPI_Full_model_stats_REML+tlrc[46] ${WD}/109/PPI_Full_model_stats_REML+tlrc[47] \
110 ${WD}/110/PPI_Full_model_stats_REML+tlrc[46] ${WD}/110/PPI_Full_model_stats_REML+tlrc[47] \
111 ${WD}/111/PPI_Full_model_stats_REML+tlrc[46] ${WD}/111/PPI_Full_model_stats_REML+tlrc[47] \
112 ${WD}/112/PPI_Full_model_stats_REML+tlrc[46] ${WD}/112/PPI_Full_model_stats_REML+tlrc[47] \
113 ${WD}/113/PPI_Full_model_stats_REML+tlrc[46] ${WD}/113/PPI_Full_model_stats_REML+tlrc[47] \
114 ${WD}/114/PPI_Full_model_stats_REML+tlrc[46] ${WD}/114/PPI_Full_model_stats_REML+tlrc[47] \
115 ${WD}/115/PPI_Full_model_stats_REML+tlrc[46] ${WD}/115/PPI_Full_model_stats_REML+tlrc[47] \
116 ${WD}/116/PPI_Full_model_stats_REML+tlrc[46] ${WD}/116/PPI_Full_model_stats_REML+tlrc[47] \
117 ${WD}/117/PPI_Full_model_stats_REML+tlrc[46] ${WD}/117/PPI_Full_model_stats_REML+tlrc[47] \
118 ${WD}/118/PPI_Full_model_stats_REML+tlrc[46] ${WD}/118/PPI_Full_model_stats_REML+tlrc[47] \
1401 ${WD}/1401/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1401/PPI_Full_model_stats_REML+tlrc[47] \
1402 ${WD}/1402/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1402/PPI_Full_model_stats_REML+tlrc[47] \
1403 ${WD}/1403/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1403/PPI_Full_model_stats_REML+tlrc[47] \
1404 ${WD}/1404/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1404/PPI_Full_model_stats_REML+tlrc[47] \
1405 ${WD}/1405/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1405/PPI_Full_model_stats_REML+tlrc[47] \
1406 ${WD}/1406/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1406/PPI_Full_model_stats_REML+tlrc[47] \
1407 ${WD}/1407/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1407/PPI_Full_model_stats_REML+tlrc[47] \
1408 ${WD}/1408/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1408/PPI_Full_model_stats_REML+tlrc[47] \
1409 ${WD}/1409/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1409/PPI_Full_model_stats_REML+tlrc[47] \
1411 ${WD}/1411/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1411/PPI_Full_model_stats_REML+tlrc[47] \
1412 ${WD}/1412/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1412/PPI_Full_model_stats_REML+tlrc[47] \
1413 ${WD}/1413/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1413/PPI_Full_model_stats_REML+tlrc[47] \
1414 ${WD}/1414/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1414/PPI_Full_model_stats_REML+tlrc[47] \
1415 ${WD}/1415/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1415/PPI_Full_model_stats_REML+tlrc[47] \
1416 ${WD}/1416/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1416/PPI_Full_model_stats_REML+tlrc[47] \
1417 ${WD}/1417/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1417/PPI_Full_model_stats_REML+tlrc[47] \
1418 ${WD}/1418/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1418/PPI_Full_model_stats_REML+tlrc[47] \
1419 ${WD}/1419/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1419/PPI_Full_model_stats_REML+tlrc[47] \
1421 ${WD}/1421/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1421/PPI_Full_model_stats_REML+tlrc[47] \
1422 ${WD}/1422/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1422/PPI_Full_model_stats_REML+tlrc[47] \
1423 ${WD}/1423/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1423/PPI_Full_model_stats_REML+tlrc[47] \
1426 ${WD}/1426/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1426/PPI_Full_model_stats_REML+tlrc[47] \
1427 ${WD}/1427/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1427/PPI_Full_model_stats_REML+tlrc[47] \
1429 ${WD}/1429/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1429/PPI_Full_model_stats_REML+tlrc[47] \
1430 ${WD}/1430/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1430/PPI_Full_model_stats_REML+tlrc[47] \
1431 ${WD}/1431/PPI_Full_model_stats_REML+tlrc[46] ${WD}/1431/PPI_Full_model_stats_REML+tlrc[47] \
-mask /home/despoB/kaihwang/standard/mni_icbm152_nlin_asym_09c/mni_icbm152_t1_tal_nlin_asym_09c_mask_2mm.nii \
-max_zeros 0.1

