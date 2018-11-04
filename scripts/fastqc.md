### Running fastqc

The following code was used to run fastqc.
```
module load contrib/fastqc/0.11.5
module load parallel-20170722
find data/test/*.fastq.gz | parallel fastqc {} --outdir results
```

To move the files to my computer, I used sftp using the command to move all zip files:
```
get results/*.fastqc.zip
```

Then, multiqc was run on all fastqc files using:
```
multiqc .
```
