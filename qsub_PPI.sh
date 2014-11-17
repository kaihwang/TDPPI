#!/bin/bash

# script to submit PPI analysis to the grid

#mkdir tmp;
#106
for Subject in 107 108 109 110 111 112 113 114 115 116 117; do
	sed "s/s in 106/s in ${Subject}/g" < PPI_tha_reg.sh > tmp/q_PPI_tha_reg_${Subject}.sh
	qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp tmp/q_PPI_tha_reg_${Subject}.sh
done