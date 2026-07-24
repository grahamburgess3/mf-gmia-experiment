#!/bin/bash

#SBATCH -J mfgmia-expl
#SBATCH -o mfgmia-expl_%A_%a.out
#SBATCH --array=0-199%50
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
cd ~/mf-gmia-experiment/experiments/exp066
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep "$SLURM_ARRAY_TASK_ID" > ./results/results_$SLURM_ARRAY_TASK_ID.txt

cd ~/mf-gmia-experiment/experiments/exp067
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep "$SLURM_ARRAY_TASK_ID" > ./results/results_$SLURM_ARRAY_TASK_ID.txt

cd ~/mf-gmia-experiment/experiments/exp068
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep "$SLURM_ARRAY_TASK_ID" > ./results/results_$SLURM_ARRAY_TASK_ID.txt

cd ~/mf-gmia-experiment/experiments/exp069
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep "$SLURM_ARRAY_TASK_ID" > ./results/results_$SLURM_ARRAY_TASK_ID.txt

cd ~/mf-gmia-experiment/experiments/exp070
srun python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep "$SLURM_ARRAY_TASK_ID" > ./results/results_$SLURM_ARRAY_TASK_ID.txt
