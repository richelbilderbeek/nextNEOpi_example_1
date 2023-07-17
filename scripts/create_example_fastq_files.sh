#!/bin/bash
#
# Run the project.
#
# Usage:
#
#   ./scripts/create_example_fastq_files.sh
#

cat > reads_s1_t_1.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF

cat > reads_s1_t_2.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF

cat > reads_s1_n_1.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF

cat > reads_s1_n_2.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF


cat > reads_s1_r_1.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF

cat > reads_s1_r_2.fastq << EOF
@SEQ_ID
GATTTGGGGTTCAAAGCAGTATCGATCAAATAGTAAATCCATTTGTTCAACTCACAGTTT
+
!''*((((***+))%%%++)(%%%%).1***-+*''))**55CCF>>>>>>CCCCCCC65
EOF

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
