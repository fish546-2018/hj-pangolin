### Samtools commands

These are commands used for post-processing of bam files from BWA.

Create script with a list of commands to:


1. Convert sam to bam.

```
for file in *.sam
do
  echo "samtools view -bS $file > ${file%.sam}.bam" >> convertsamtobam.sh
done
```

Note: find a way to rewrite this script using ```find *.sam | print xargs basename -s .sam```

2. Sort bam files.
```
for file in *.bam;
do echo "samtools sort $file -o ${file%.bam}_sorted.bam" >> sortbam.sh;
done
```
3. Index bam files.
```
for file in *.bam;
do echo "samtools index $file" >> indexallbam.sh;
done
```

Then, ```sed -n '1~2!p' indexallbam.sh > indexbam.sh```. Turns out sorted bam files should be used for indexing. The initial loop should search for ```*sorted.bam files ```.

4. Find longest scaffold for ANGSD run.
```
samtools view -h aln-10595.sam | grep '^@SQ' | scaf_length.txt
```
```
sort -k3 -V scaf_length.txt > sorted_scaf_length.txt
```

The longest scaffold is SN:NW_016527503.1 with	LN:2314370.
