for file in *.sam
do
  echo "samtools view -bS $file > ${file%.sam}.bam" >> convertsamtobam.sh
done
