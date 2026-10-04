#!/bin/bash
#
#SBATCH --job-name=test_GB
#SBATCH --output=logs/%x.out
#SBATCH --error=logs/%x.err
#SBATCH --partition=batch
#
#SBATCH --time=05:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=2000

source "$HOME/miniforge3/etc/profile.d/conda.sh"
conda activate grass-bridges
srun python -m simulation_cnw_3ds