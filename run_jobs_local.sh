#!/bin/bash

cd ~/GitHub/mf-gmia-experiment/experiments/exp071
python3 -m mf_gmia.optimise --config config.yaml --optimise --parallelise_outside_python --macrorep 0
