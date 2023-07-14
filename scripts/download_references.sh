#!/bin/bash
#
# Download the references
#
# Usage:
#
#   ./scripts/download_references.sh
#

wget https://apps-01.i-med.ac.at/resources/nextneopi/nextNEOpi_1.3_resources.tar.gz 
mv nextNEOpi_1.3_resources.tar.gz nextNEOpi/
gunzip nextNEOpi/nextNEOpi_1.3_resources.tar.gz
tar -xf nextNEOpi/nextNEOpi_1.3_resources.tar -C nextNEOpi/resources