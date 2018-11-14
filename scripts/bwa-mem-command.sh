for f in {10594..10603};
do echo bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/*$f*R1* /gscratch/stf/kimh11/fish-fastqc/data/*$f*R2*;
done