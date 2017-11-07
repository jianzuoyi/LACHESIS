#!/bin/bash

DB=../../../00.Reference/GCF_000001735.3_TAIR10_genomic.fna
QRY=../../../output/Shred/GCF_000001735.3_TAIR10_genomic_cut.fasta

source activate old

blastn -query $QRY -db $DB -outfmt 7 -num_threads 32 -max_hsps 1 -max_target_seqs 1 -out assembly.1.blast.out
