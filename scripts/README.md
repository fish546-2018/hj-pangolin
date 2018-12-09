### Scripts

This folder contains commands and scripts used to run analysis on Mox.

The .slurm scripts are used to run batch jobs on Mox:
- bwa-index.slurm: index reference genome of Manis javanica (slurm-443228.out)
- runbwa.slurm: run BWA MEM on all samples (slurm-443352.out)
- sortbam: sort bam files using samtools
- angsd-run1: assess quality and coverage depth of SNPs to choose quality filters
- angsd-run2: get high quality SNPs to analyze clustering
- angsd-run3-admix: analyze admixture in samples
- freebayes: run freebayes on all indivduals to find SNPd
The .sh scripts contain intermediary commands used to create .slurm scripts.

- bwa-mem-command.sh: for loop used to create a list of bwa mem commands for each sample

The .md files contain any commands used interactively and so were not contained in a script.
- fastqc.md: commands used to run `FASTQC` on Mox
- samtools.md: commands used to run `samtools` on Mox
