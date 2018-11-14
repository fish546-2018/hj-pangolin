### Scripts

This folder contains commands and scripts used to run analysis on Mox.

The .slurm scripts are used to run batch jobs on Mox:
- bwa-index.slurm: index reference genome of Manis javanica
- runbwa.slrum: run BWA MEM on all samples

The .sh scripts contain intermediary commands used to create .slurm scripts.

- bwa-mem-command.sh: for loop used to create a list of bwa mem commands for each sample

The .md files contain any commands used interactively and so were not contained in a script.
