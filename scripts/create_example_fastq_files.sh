#!/bin/bash
#
# Run the project.
#
# Usage:
#
#   ./scripts/create_example_fastq_files.sh
#

echo "@SEQ_ID"                                                       >  reads_s1_t_1.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_t_1.fastq
echo "+"                                                             >> reads_s1_t_1.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_t_1.fastq

echo "@SEQ_ID"                                                       >  reads_s1_t_2.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_t_2.fastq
echo "+"                                                             >> reads_s1_t_2.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_t_2.fastq

echo "@SEQ_ID"                                                       >  reads_s1_n_1.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_n_1.fastq
echo "+"                                                             >> reads_s1_n_1.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_n_1.fastq

echo "@SEQ_ID"                                                       >  reads_s1_n_2.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_n_2.fastq
echo "+"                                                             >> reads_s1_n_2.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_n_2.fastq

echo "@SEQ_ID"                                                       >  reads_s1_r_1.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_r_1.fastq
echo "+"                                                             >> reads_s1_r_1.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_r_1.fastq

echo "@SEQ_ID"                                                       >  reads_s1_r_2.fastq
echo "GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT"  >> reads_s1_r_2.fastq
echo "+"                                                             >> reads_s1_r_2.fastq
echo "\!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65" >> reads_s1_r_2.fastq

gzip reads_s1_t_1.fastq
gzip reads_s1_t_2.fastq
gzip reads_s1_n_1.fastq
gzip reads_s1_n_2.fastq
gzip reads_s1_r_1.fastq
gzip reads_s1_r_2.fastq

mv reads_s1_t_1.fastq.gz nextNEOpi/
mv reads_s1_t_2.fastq.gz nextNEOpi/
mv reads_s1_n_1.fastq.gz nextNEOpi/
mv reads_s1_n_2.fastq.gz nextNEOpi/
mv reads_s1_r_1.fastq.gz nextNEOpi/
mv reads_s1_r_2.fastq.gz nextNEOpi/
