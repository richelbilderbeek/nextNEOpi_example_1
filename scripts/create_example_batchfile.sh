#!/bin/bash
#
# Run the project.
#
# Usage:
#
#   ./scripts/create_example_batchfile.sh
#

echo "sampleName,reads1,reads2,sampleType,HLAfile,sex"                        >  example_batchfile.csv
echo "sample1,reads_s1_t_1.fastq.gz,reads_s1_t_2.fastq.gz,tumor_DNA,,female"  >> example_batchfile.csv
echo "sample1,reads_s1_n_1.fastq.gz,reads_s1_n_2.fastq.gz,normal_DNA,,female" >> example_batchfile.csv
echo "sample1,reads_s1_r_1.fastq.gz,reads_s1_r_2.fastq.gz,tumor_RNA,,female"  >> example_batchfile.csv

mv example_batchfile.csv nextNEOpi/