#!/bin/bash
# script for group analysis.

# run group analysis
cd /home/despoB/kaihwang/TRSE/Group
WD='/home/despoB/kaihwang/TRSE'

# gppi irre - rle
3dttest++ -prefix ttest_Full_model_FSLgPPI_irrelevant-relevant_groupANA \
-setA irrelevant-relevant \
106 ${WD}/106/FSLgPPI_Full_model_stats_REML+tlrc[34] \
107 ${WD}/107/FSLgPPI_Full_model_stats_REML+tlrc[34] \
108 ${WD}/108/FSLgPPI_Full_model_stats_REML+tlrc[34] \
109 ${WD}/109/FSLgPPI_Full_model_stats_REML+tlrc[34] \
110 ${WD}/110/FSLgPPI_Full_model_stats_REML+tlrc[34] \
111 ${WD}/111/FSLgPPI_Full_model_stats_REML+tlrc[34] \
112 ${WD}/112/FSLgPPI_Full_model_stats_REML+tlrc[34] \
113 ${WD}/113/FSLgPPI_Full_model_stats_REML+tlrc[34] \
114 ${WD}/114/FSLgPPI_Full_model_stats_REML+tlrc[34] \
115 ${WD}/115/FSLgPPI_Full_model_stats_REML+tlrc[34] \
116 ${WD}/116/FSLgPPI_Full_model_stats_REML+tlrc[34] \
117 ${WD}/117/FSLgPPI_Full_model_stats_REML+tlrc[34] \
118 ${WD}/118/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1401 ${WD}/1401/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1402 ${WD}/1402/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1403 ${WD}/1403/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1404 ${WD}/1404/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1405 ${WD}/1405/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1406 ${WD}/1406/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1407 ${WD}/1407/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1408 ${WD}/1408/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1409 ${WD}/1409/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1411 ${WD}/1411/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1412 ${WD}/1412/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1413 ${WD}/1413/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1414 ${WD}/1414/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1415 ${WD}/1415/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1416 ${WD}/1416/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1417 ${WD}/1417/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1418 ${WD}/1418/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1419 ${WD}/1419/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1421 ${WD}/1421/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1422 ${WD}/1422/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1423 ${WD}/1423/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1426 ${WD}/1426/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1427 ${WD}/1427/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1429 ${WD}/1429/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1430 ${WD}/1430/FSLgPPI_Full_model_stats_REML+tlrc[34] \
1431 ${WD}/1431/FSLgPPI_Full_model_stats_REML+tlrc[34] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz


3dttest++ -prefix ttest_Full_model_FSLgPPI_irrelevant_groupAANA \
-setA irrelevant \
106 ${WD}/106/FSLgPPI_Full_model_stats_REML+tlrc[26] \
107 ${WD}/107/FSLgPPI_Full_model_stats_REML+tlrc[26] \
108 ${WD}/108/FSLgPPI_Full_model_stats_REML+tlrc[26] \
109 ${WD}/109/FSLgPPI_Full_model_stats_REML+tlrc[26] \
110 ${WD}/110/FSLgPPI_Full_model_stats_REML+tlrc[26] \
111 ${WD}/111/FSLgPPI_Full_model_stats_REML+tlrc[26] \
112 ${WD}/112/FSLgPPI_Full_model_stats_REML+tlrc[26] \
113 ${WD}/113/FSLgPPI_Full_model_stats_REML+tlrc[26] \
114 ${WD}/114/FSLgPPI_Full_model_stats_REML+tlrc[26] \
115 ${WD}/115/FSLgPPI_Full_model_stats_REML+tlrc[26] \
116 ${WD}/116/FSLgPPI_Full_model_stats_REML+tlrc[26] \
117 ${WD}/117/FSLgPPI_Full_model_stats_REML+tlrc[26] \
118 ${WD}/118/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1401 ${WD}/1401/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1402 ${WD}/1402/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1403 ${WD}/1403/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1404 ${WD}/1404/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1405 ${WD}/1405/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1406 ${WD}/1406/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1407 ${WD}/1407/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1408 ${WD}/1408/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1409 ${WD}/1409/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1411 ${WD}/1411/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1412 ${WD}/1412/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1413 ${WD}/1413/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1414 ${WD}/1414/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1415 ${WD}/1415/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1416 ${WD}/1416/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1417 ${WD}/1417/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1418 ${WD}/1418/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1419 ${WD}/1419/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1421 ${WD}/1421/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1422 ${WD}/1422/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1423 ${WD}/1423/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1426 ${WD}/1426/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1427 ${WD}/1427/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1429 ${WD}/1429/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1430 ${WD}/1430/FSLgPPI_Full_model_stats_REML+tlrc[26] \
1431 ${WD}/1431/FSLgPPI_Full_model_stats_REML+tlrc[26] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz

3dttest++ -prefix ttest_Full_model_FSLgPPI_relevant_grouApANA \
-setA relevant \
106 ${WD}/106/FSLgPPI_Full_model_stats_REML+tlrc[30] \
107 ${WD}/107/FSLgPPI_Full_model_stats_REML+tlrc[30] \
108 ${WD}/108/FSLgPPI_Full_model_stats_REML+tlrc[30] \
109 ${WD}/109/FSLgPPI_Full_model_stats_REML+tlrc[30] \
110 ${WD}/110/FSLgPPI_Full_model_stats_REML+tlrc[30] \
111 ${WD}/111/FSLgPPI_Full_model_stats_REML+tlrc[30] \
112 ${WD}/112/FSLgPPI_Full_model_stats_REML+tlrc[30] \
113 ${WD}/113/FSLgPPI_Full_model_stats_REML+tlrc[30] \
114 ${WD}/114/FSLgPPI_Full_model_stats_REML+tlrc[30] \
115 ${WD}/115/FSLgPPI_Full_model_stats_REML+tlrc[30] \
116 ${WD}/116/FSLgPPI_Full_model_stats_REML+tlrc[30] \
117 ${WD}/117/FSLgPPI_Full_model_stats_REML+tlrc[30] \
118 ${WD}/118/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1401 ${WD}/1401/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1402 ${WD}/1402/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1403 ${WD}/1403/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1404 ${WD}/1404/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1405 ${WD}/1405/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1406 ${WD}/1406/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1407 ${WD}/1407/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1408 ${WD}/1408/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1409 ${WD}/1409/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1411 ${WD}/1411/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1412 ${WD}/1412/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1413 ${WD}/1413/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1414 ${WD}/1414/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1415 ${WD}/1415/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1416 ${WD}/1416/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1417 ${WD}/1417/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1418 ${WD}/1418/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1419 ${WD}/1419/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1421 ${WD}/1421/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1422 ${WD}/1422/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1423 ${WD}/1423/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1426 ${WD}/1426/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1427 ${WD}/1427/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1429 ${WD}/1429/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1430 ${WD}/1430/FSLgPPI_Full_model_stats_REML+tlrc[30] \
1431 ${WD}/1431/FSLgPPI_Full_model_stats_REML+tlrc[30] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz



# gppi irre - rle
3dttest++ -prefix ttest_Ortho_model_FSLgPPI_irrelevant-relevant_groupANA \
-setA irrelevant-relevant \
106 ${WD}/106/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
107 ${WD}/107/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
108 ${WD}/108/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
109 ${WD}/109/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
110 ${WD}/110/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
111 ${WD}/111/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
112 ${WD}/112/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
113 ${WD}/113/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
114 ${WD}/114/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
115 ${WD}/115/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
116 ${WD}/116/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
117 ${WD}/117/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
118 ${WD}/118/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1401 ${WD}/1401/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1402 ${WD}/1402/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1403 ${WD}/1403/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1404 ${WD}/1404/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1405 ${WD}/1405/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1406 ${WD}/1406/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1407 ${WD}/1407/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1408 ${WD}/1408/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1409 ${WD}/1409/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1411 ${WD}/1411/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1412 ${WD}/1412/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1413 ${WD}/1413/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1414 ${WD}/1414/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1415 ${WD}/1415/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1416 ${WD}/1416/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1417 ${WD}/1417/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1418 ${WD}/1418/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1419 ${WD}/1419/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1421 ${WD}/1421/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1422 ${WD}/1422/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1423 ${WD}/1423/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1426 ${WD}/1426/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1427 ${WD}/1427/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1429 ${WD}/1429/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1430 ${WD}/1430/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
1431 ${WD}/1431/FSLgPPI_Ortho_model_stats_REML+tlrc[34] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz


3dttest++ -prefix ttest_Ortho_model_FSLgPPI_irrelevant_groupAANA \
-setA irrelevant \
106 ${WD}/106/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
107 ${WD}/107/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
108 ${WD}/108/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
109 ${WD}/109/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
110 ${WD}/110/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
111 ${WD}/111/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
112 ${WD}/112/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
113 ${WD}/113/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
114 ${WD}/114/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
115 ${WD}/115/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
116 ${WD}/116/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
117 ${WD}/117/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
118 ${WD}/118/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1401 ${WD}/1401/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1402 ${WD}/1402/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1403 ${WD}/1403/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1404 ${WD}/1404/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1405 ${WD}/1405/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1406 ${WD}/1406/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1407 ${WD}/1407/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1408 ${WD}/1408/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1409 ${WD}/1409/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1411 ${WD}/1411/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1412 ${WD}/1412/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1413 ${WD}/1413/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1414 ${WD}/1414/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1415 ${WD}/1415/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1416 ${WD}/1416/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1417 ${WD}/1417/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1418 ${WD}/1418/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1419 ${WD}/1419/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1421 ${WD}/1421/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1422 ${WD}/1422/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1423 ${WD}/1423/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1426 ${WD}/1426/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1427 ${WD}/1427/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1429 ${WD}/1429/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1430 ${WD}/1430/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
1431 ${WD}/1431/FSLgPPI_Ortho_model_stats_REML+tlrc[26] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlap_mask.nii.gz

3dttest++ -prefix ttest_Ortho_model_FSLgPPI_relevant_grouApANA \
-setA relevant \
106 ${WD}/106/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
107 ${WD}/107/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
108 ${WD}/108/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
109 ${WD}/109/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
110 ${WD}/110/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
111 ${WD}/111/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
112 ${WD}/112/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
113 ${WD}/113/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
114 ${WD}/114/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
115 ${WD}/115/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
116 ${WD}/116/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
117 ${WD}/117/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
118 ${WD}/118/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1401 ${WD}/1401/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1402 ${WD}/1402/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1403 ${WD}/1403/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1404 ${WD}/1404/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1405 ${WD}/1405/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1406 ${WD}/1406/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1407 ${WD}/1407/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1408 ${WD}/1408/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1409 ${WD}/1409/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1411 ${WD}/1411/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1412 ${WD}/1412/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1413 ${WD}/1413/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1414 ${WD}/1414/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1415 ${WD}/1415/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1416 ${WD}/1416/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1417 ${WD}/1417/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1418 ${WD}/1418/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1419 ${WD}/1419/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1421 ${WD}/1421/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1422 ${WD}/1422/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1423 ${WD}/1423/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1426 ${WD}/1426/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1427 ${WD}/1427/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1429 ${WD}/1429/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1430 ${WD}/1430/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
1431 ${WD}/1431/FSLgPPI_Ortho_model_stats_REML+tlrc[30] \
-mask /home/despoB/kaihwang/TRSE/Group/TRSE_overlamax_zeros 0.8


