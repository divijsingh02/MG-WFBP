#!/bin/bash
dnn="${dnn:-resnet20}"
source exp_configs/$dnn.conf
nworkers="${nworkers:-4}"
threshold="${threshold:-0}"
nwpernode=4
nstepsupdate=1
PY=python
GRADSPATH=./logs

$PY dist_trainer.py --dnn $dnn --dataset $dataset --max-epochs $max_epochs --batch-size $batch_size --nworkers $nworkers --data-dir $data_dir --lr $lr --nsteps-update $nstepsupdate --nwpernode $nwpernode --threshold $threshold --saved-dir $GRADSPATH
