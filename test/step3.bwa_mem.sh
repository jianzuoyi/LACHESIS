#!/bin/bash
set -ev

BWA=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/bwa
SAMTOOLS=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/samtools

#bwa index 02.Shred/GCF_000001735.3_TAIR10_genomic_cut.fasta
REF=/its1/GB_BT2/jianzuoyi/biosoft/LACHESIS/test/output/Shred/GCF_000001735.3_TAIR10_genomic_cut.fasta
#FQ=/its1/GB_BT2/jianzuoyi/biosoft/LACHESIS/test/output/sim3C/GCF_000001735.3_TAIR10_genomic.sim.200X.fastq
FQ=/its1/GB_BT2/jianzuoyi/biosoft/LACHESIS/test/output/sim3C/GCF_000001735.3_TAIR10_genomic.sim.1X.fastq
OUTDIR=/its1/GB_BT2/jianzuoyi/biosoft/LACHESIS/test/output/bwa.mem
OUTBASE=sim.hic
THREADS=32

$BWA mem -t $THREADS -p $REF $FQ | $SAMTOOLS view -h -b - > ${OUTDIR}/${OUTBASE}.bam
$SAMTOOLS view -bhF 2048 ${OUTDIR}/${OUTBASE}.bam > ${OUTDIR}/${OUTBASE}.F2048.bam
