#!/bin/bash
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 10:00
#SBATCH --job-name t267886
#SBATCH --qos=short
#
# Build the project on Rackham, an UPPMAX computer cluster, see
# https://www.uppmax.uu.se/support/user-guides/rackham-user-guide/
#
# Usage:
#
#   ./scripts/run_on_rackham.sh
#
#  Using sbatch, when being Richel:
#
#   sbatch -A uppmax2023-2-25 -M snowy scripts/run_on_rackham.sh
#
#  Or using the convenience script:
#
#   ./sbatch_richel.sh
#
if [[ ! -z "${CLUSTER}" ]]; then
  echo "Working on a cluster"
else
  echo "Not working on a cluster, stopping"
  exit 42
fi

date
module load bioinfo-tools nextNEOpi/1.3.2b python/3.9.5 java/OpenJDK_17+35
./scripts/run.sh
