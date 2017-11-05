#!/bin/bash

source activate sim3C
sim3C.py --convert --profile profile.tsv -n 8000000 -l 150 -e HindIII -m hic 00.Index/GCF_000001735.3_TAIR10_genomic.fna output/sim3C/GCF_000001735.3_TAIR10_genomic.sim.10X.fastq
