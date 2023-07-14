#!/bin/bash
#
# Create a simplied version of the references
#
# Usage:
#
#   ./scripts/create_fake_references.sh
#

#mkdir nextNEOpi/resources
#mkdir nextNEOpi/resources/references
#mkdir nextNEOpi/resources/references/hg38
#mkdir nextNEOpi/resources/references/hg38/gdc
#mkdir nextNEOpi/resources/references/hg38/gdc/GRCh38.d1.vd1
mkdir --parents nextNEOpi/resources/references/hg38/gdc/GRCh38.d1.vd1/fasta

cp scripts/hg38.len nextNEOpi/resources/references/hg38/gdc/GRCh38.d1.vd1/fasta
