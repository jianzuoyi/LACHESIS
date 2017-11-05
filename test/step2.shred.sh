#seqtk cutN -n 50 00.Index/GCF_000001735.3_TAIR10_genomic.fna > 02.cutN/GCF_000001735.3_TAIR10_genomic_cut.fasta
shred.sh in=00.Index/GCF_000001735.3_TAIR10_genomic.fna out=02.Shred/GCF_000001735.3_TAIR10_genomic_cut.fasta length=1000000 equal=t overwrite=t
