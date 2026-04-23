# mf-gmia-experiment
experiment with mf-gmia package

To use this - first start pyenv with source ~/start-pyenv
Then start a new venv with python -m venv .venv and activate this
Then install mfgmia:
python -m pip install 'git+https://github.com/grahamburgess3/mf-gmia'
Then move into the experiment folder and run this. 
python -m mf_gmia.optimise --config config.yaml --optimise --standardise --parallelise_outside_python --macrorep 0 > test_result.txt
