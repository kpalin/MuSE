#!/bin/bash

#  Created on Thursday, 15 August  2024

# For debugging
#set -o verbose

ENVNAME=/mnt/cgnano/projects/promethion/software/nxf_apptainer_2024
if [ -d "${ENVNAME}" ]; then
    set +u
    eval "$(conda shell.bash hook)"
    conda activate ${ENVNAME}
    set -u
fi
# Die on unset variables
set -o nounset
# Die on errors
set -o errexit
# Die if any part of a pipe fails
set -o pipefail

"$(dirname -- "$(readlink -f -- "$0")")"/MuSe.sif "$@"
