#!/bin/bash
module unload python || true
module load apptainer
module load miniforge/24.7.1

#enable conda commands
source "$(conda info --base)/etc/profile.d/conda.sh"
eval "$(conda shell.bash hook)" || true

#activate environment
conda activate BEELINE

echo "[INFO] BEELINE environment activated. Ready to run Beeline."
