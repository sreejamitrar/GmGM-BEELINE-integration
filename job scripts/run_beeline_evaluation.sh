#!/bin/bash
#SBATCH --job-name=EVAL_BEELINE
#SBATCH --output=NEW1000eval_%j.out
#SBATCH --error=NEW1000eval_%j.err
#SBATCH --time=48:00:00
#SBATCH --mem=32G
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=END,FAIL

source /users/mgcc4941/myproject/activate_myproject.sh

cd /users/mgcc4941/myproject/Beeline

python BLEvaluator.py --config /users/mgcc4941/myproject/Beeline/config-files/config.yaml --auc --epr --sepr
