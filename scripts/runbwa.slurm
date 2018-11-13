#!/bin/bash
## Job Name
#SBATCH --job-name=fish-BWA
## Allocation Definition
## On mox and ikt, the account and partition options should be the same.
#SBATCH --account=stf
#SBATCH --partition=stf
## Resources
## Nodes
#SBATCH --nodes=1   
## Walltime (3 hours). Do not specify a walltime substantially more than your job needs.
#SBATCH --time=5:00:00
## Memory per node. It is important to specify the memory since the default memory is very small.
## For mox, --mem may be more than 100G depending on the memory of your nodes.
## For ikt, --mem may be 58G or more depending on the memory of your nodes.
## See above section on "Specifying memory" for choices for --mem.
#SBATCH --mem=100G
## Specify the working directory for this job
#SBATCH --workdir=/gscratch/stf/kimh11/bwa
##turn on e-mail notification
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kimh11@uw.edu
## export all your environment variables to the batch job session
#SBATCH --export=all
 

module load contrib/bwa/0.7.17
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10594_GS28760-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10594_GS28760-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10595_GS28761-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10595_GS28761-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10596_GS28762-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10596_GS28762-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10597_GS28763-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10597_GS28763-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10598_GS28764-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10598_GS28764-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10599_GS28765-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10599_GS28765-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10600_GS28766-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10600_GS28766-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10601_GS28767-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10601_GS28767-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10602_GS28768-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10602_GS28768-1_S0_L001_R2_001.fastq.gz
bwa mem -M -t 27 GCF_001685135.1_ManJav1.0_genomic.fna.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10603_GS28769-1_S0_L001_R1_001.fastq.gz /gscratch/stf/kimh11/fish-fastqc/data/Pangolin_17-10603_GS28769-1_S0_L001_R2_001.fastq.gz
