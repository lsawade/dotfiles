#!/bin/bash

module purge
module load ${MODULES}
. ${OLCF_PYTHON_ROOT}/etc/profile.d/conda.sh