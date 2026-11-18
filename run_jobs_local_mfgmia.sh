#!/bin/bash

# Python get simulation outputs from initial design and global LF outputs
cd ~/GitHub/mf-gmia/experiments/exp072
poetry run python ./../../src/mf_gmia/optimise.py --config config.yaml --initial_design --parallelise_outside_python --macrorep 1

# Get hyperparams from matlab
cd ./../../src/mf_gmia
matlab -batch "main"

# Read hyparams in and optimise in python
cd ./../../experiments/exp072
poetry run python ./../../src/mf_gmia/optimise.py --config config.yaml --optimise --parallelise_outside_python --macrorep 1

# Remove temp files
rm ./matlab_input.txt
rm ./matlab_output.txt
