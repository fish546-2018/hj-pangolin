### ANGSD commands

These are commands used to run ANGSD>

1. Assess base qualities and coverage depth.

  Create a text file with all the bams files.

  ```ls *sorted.bams > bams```

  Run ANGSD:
```
FILTERS="-uniqueOnly 1 -remove_bads 1 -minMapQ 20 -maxDepth 1200"
TODO="-doQsDist 1 -doDepth 1 -doCounts 1 -dumpCounts 2"
angsd -b bams -r 'chr1' -GL 1 $FILTERS $TODO -P 1 -out dd
```
