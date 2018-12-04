#!/bin/bash
## Job Name
#SBATCH --job-name=fish-angsd-run1
## Allocation Definition
## On mox and ikt, the account and partition options should be the same.
#SBATCH --account=stf
#SBATCH --partition=stf
## Resources
## Nodes
#SBATCH --nodes=1   
## Walltime (3 hours). Do not specify a walltime substantially more than your job needs.
#SBATCH --time=10:00:00
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
 

module load contrib/angsd/0.921
FILTERS="-uniqueOnly 1 -remove_bads 1 -minMapQ 20 -maxDepth 1200"
TODO="-doQsDist 1 -doDepth 1 -doCounts 1 -dumpCounts 2"
angsd -b bams -r 'NW_016527503.1' -GL 1 $FILTERS $TODO -P 1 -out angsd-1-qual-check
