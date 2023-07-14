#!/bin/bash
#
# Run the project.
#
# Usage:
#
#   ./scripts/run.sh
#

export JAVA_HOME=$(readlink -f `which javac` | sed "s:/bin/javac::")
echo "JAVA_HOME: ${JAVA_HOME}"
export JAVA_CMD="${JAVA_HOME}/bin/java"
echo "JAVA_CMD: ${JAVA_CMD}"

# Clone the repository
if [ ! -d nextNEOpi ]; then
  git clone https://github.com/icbi-lab/nextNEOpi
fi

if [[ -z "GITHUB_ACTIONS" ]]; then
  echo "Cannot download the data, will skip"
else
  if [ ! -d nextNEOpi/resources/references/hg38/gdc/GRCh38.d1.vd1/fasta ]; then
    ./scripts/download_references.sh
  fi
fi

# Copy sensitive data into the expected names
#
# | sampleName | reads1 | reads2 | sampleType | HLAfile | sex |
# | ---------- |------- | ------ | ---------- | ------- | --- |
# | sample1 | reads_s1_t_1.fastq.gz | reads_s1_t_2.fastq.gz | tumor_DNA | | female
# | sample1 | reads_s1_n_1.fastq.gz | reads_s1_n_2.fastq.gz | normal_DNA | | female
# | sample1 | reads_s1_r_1.fastq.gz | reads_s1_r_2.fastq.gz | tumor_RNA | | female
# | sample2 | reads_s2_t_1.fastq.gz | reads_s2_t2.fastq.gz | tumor_DNA | /data/sample2_hla.txt | male
#cp --update Exome_Tumor_R1.fastq.gz nextNEOpi/reads_s1_t_1.fastq.gz
#cp --update Exome_Tumor_R2.fastq.gz nextNEOpi/reads_s1_t_2.fastq.gz
#cp --update Exome_Norm_R1.fastq.gz nextNEOpi/reads_s1_n_1.fastq.gz
#cp --update Exome_Norm_R2.fastq.gz nextNEOpi/reads_s1_n_2.fastq.gz
#cp --update RNAseq_Tumor_Lane1_R1.fastq.gz nextNEOpi/reads_s1_r_1.fastq.gz
#cp --update RNAseq_Tumor_Lane1_R2.fastq.gz nextNEOpi/reads_s1_r_2.fastq.gz
# No such file: /data/sample2_hla.txt
./scripts/create_example_fastq_files.sh

# Creares file 'nextNEOpi/example_batchfile.csv'
./scripts/create_example_batchfile.sh

# Remove the old trace file
rm -f nextNEOpi/RESULTS/pipeline_info/icbi/nextNEOpi_trace.txt

cd nextNEOpi

NXF_VER=22.10.8

nextflow run nextNEOpi.nf --batchFile example_batchfile.csv \
  -profile singularity \
  -config conf/params.config \
  --exomeCaptureKit "Twist" \
  --trim_adapters true \
  --trim_adapters_RNAseq true \
  --mutect2ponFile 1000g_pon.hg38.vcf.gz \
  --use_sequenza_cnvs true \
  --TCR false \
  --accept_license

cd ..
