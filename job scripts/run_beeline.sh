#!/bin/bash
#SBATCH --job-name=2000_runbeeline
#SBATCH --output=2000_runbeeline_%j.out
#SBATCH --error=2000_beeline_%j.err
#SBATCH --time=10:00:00
#SBATCH --mem=32G
#SBATCH --cpus-per-task=4

#activate env
source /users/mgcc4941/myproject/activate_myproject.sh
#navigate to your project directory
cd /users/mgcc4941/myproject/Beeline

#project root (this ensures inputs/outputs/configs are visible inside container)
BIND_PATH=/users/mgcc4941/myproject/Beeline

#path to container
CONTAINER_PATH=$BIND_PATH/Algorithms/ARBORETO/arboreto.sif

echo "Running Beeline with config: /data/config-files/config.yaml"
echo "Binding: $BIND_PATH to /data"
echo "Container: $CONTAINER_PATH"

#run Beeline with Singularity binding the whole project
apptainer exec \
  --bind $BIND_PATH:/data \
  $CONTAINER_PATH \
  bash -c "cd /data && python BLRunner.py --config /data/config-files/config.yaml"
