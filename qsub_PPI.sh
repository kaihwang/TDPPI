#!/bin/bash

# script to submit PPI analysis to the grid

mkdir tmp;

for Subject in 106 107 108 109 110 111 112 113 114 115 116 117; do
	sed "s/s in 106/s in ${Subject}/g" < PPI_reg.sh > tmp/qPPI_reg_${Subject}.sh
	qsub -V -M kaihwang -m e -e ~/tmp -o ~/tmp tmp/qPPI_reg_${Subject}.sh
done