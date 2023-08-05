#!/bin/bash
export CUDA_DEVICE_ORDER=PCI_BUS_ID # Change according to GPU availability
export CUDA_VISIBLE_DEVICES=1 # Change according to GPU availability

eval "$(conda shell.bash hook)"
conda activate osformer
cd /home/dtpthao/workspace/camo/OSFormer/adet/modeling/osformer/

config_file="configs/CIS_R50.yaml"
output_dir="/home/dtpthao/workspace/camo/OSFormer/CIS_R50_output/"


# Train OSFormer
python tools/train_net.py \
--config-file $config_file \
OUTPUT_DIR $output_dir \
--num-gpus 1 #2
                    
