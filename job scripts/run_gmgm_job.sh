#!/bin/bash
#SBATCH --job-name=gmgm_job
#SBATCH --output=logs/gmgm_%j.out
#SBATCH --error=logs/gmgm_%j.err
#SBATCH --time=06:00:00
#SBATCH --mem=32G
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=END,FAIL

# Activate your Python environment
source venv/bin/activate

# Run your script
echo "Job started at $(date)"
/usr/bin/time -v python run_gmgm.py
echo "Job finished at $(date)"
