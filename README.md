
### Developing SNPs in multiple species of pangolins for population differentiation

The goal of this project is to build a reproducible pipeline that takes whole genome sequence data from pangolins and identifies single nucleotide polymorphisms (SNPs) between two species.


#### Objectives
Create a well documented and reproducible pipeline that:
1. Runs FASTQC to check for quality of reads
2. Aligns fastq files to a reference genome using BWA
3. Identifies SNPs across species using FreeBayes

#### Repository Structure

[**data**](https://github.com/fish546-2018/hj-pangolin/tree/master/data)  
README and files containing information about data files. Raw data files are too big to store on Github.
 -raw-data: contains .fastq filters
 -reference-genome: contains downloaded reference genome .gz file

[**tutorials**](https://github.com/fish546-2018/hj-pangolin/tree/master/tutorials)  
Jupyter and R notebooks from tutorials in class.   
  - BLAST tutorial

[**notebooks**](https://github.com/fish546-2018/hj-pangolin/tree/master/notebooks)  
Jupyter notebooks used for analyses.

[**scripts**](https://github.com/fish546-2018/hj-pangolin/tree/master/scripts)  
Bash scripts used to run analyses on Mox.

[**analyses**](https://github.com/fish546-2018/hj-pangolin/tree/master/analyses)
Results and intermediate files from analysis.
  -aligned-files: contains .sam and .bam files
  -fastqc: contains `FASTQC` and `multiQC` results



#### Project Timeline

**Week 4:** Set up project directory and organization for running analyses on Mox.

**Week 5:** Run ```FASTQC``` on raw sequences files using GNU parallel to learn how to split up commands

**Week 6:** Check md5sum of the downloaded reference genome and index reference genome for BWA

**Week 7:** Run BWA on fastq files for all 10 individuals

**Week 9:** Run FreeBayes on aligned bam files

#### Next Steps

1. Filter identified SNPs using various quality filters
2. Identify the top most informative SNPs
3. Use a genome-aware primer designing software to design primers around SNPs of interest



![pangolin](https://farm5.staticflickr.com/4421/35769436014_4e879dcea6_z_d.jpg)  
[Adam Tusk](https://www.flickr.com/photos/148468630@N02/35769436014) / CC BY 2.0
