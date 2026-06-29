#!/bin/bash

#SBATCH -J mfgmia-sasena-array-diag
#SBATCH -o mfgmia-sasena-array-diag_%A_%a.out
#SBATCH --array=0-9%10
#SBATCH -c 1
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=1GB
#SBATCH --mail-type=ALL
#SBATCH --mail-user=g.burgess1@lancaster.ac.uk

# start pyenv
source ~/start-pyenv

# move into project directory and setup environ
cd ~/mf-gmia-experiment
source .venv/bin/activate

# run
cd ~/mf-gmia-experiment/experiments/exp050
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$SLURM_ARRAY_TASK_ID"

cd ~/mf-gmia-experiment/experiments/exp051
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$SLURM_ARRAY_TASK_ID"

cd ~/mf-gmia-experiment/experiments/exp052
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$SLURM_ARRAY_TASK_ID"

cd ~/mf-gmia-experiment/experiments/exp053
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$SLURM_ARRAY_TASK_ID"

cd ~/mf-gmia-experiment/experiments/exp054
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$SLURM_ARRAY_TASK_ID"
