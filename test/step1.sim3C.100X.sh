#!/bin/bash

source activate sim3C
sim3C.py --convert --profile profile.tsv -n 80000000 -l 150 -e HindIII -m hic 00.Reference/GCF_000001735.3_TAIR10_genomic.fna output/sim3C/GCF_000001735.3_TAIR10_genomic.sim.100X.fastq
