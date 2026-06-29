#!/bin/bash

# run
cd ./experiments/exp050
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$1"
cd ../..
echo "done 50"

cd ./experiments/exp051
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$1"
cd ../..
echo "done 51"

cd ./experiments/exp052
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$1"
cd ../..
echo "done 52"

cd ./experiments/exp053
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$1"
cd ../..
echo "done 53"

cd ./experiments/exp054
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --diagnose --macrorep "$1"
cd ../..
echo "done 54"
