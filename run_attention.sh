#########################################################################
# File Name: run_attention.sh
# Author: ad26kt
# mail: ad26kt@gmail.com
# Created Time: Mon 09 Oct 2017 05:07:43 PM KST
#########################################################################
#!/bin/bash
MODE='train'

TRAIN_INPUT='data/trec/processed/trec_train_max_20.npy'
TRAIN_TARGET='data/trec/processed/trec_train_max_20_target.npy'
TEST_INPUT='data/trec/processed/trec_test_max_20.npy'
TEST_TARGET='data/trec/processed/trec_test_max_20_target.npy'

TRAIN_STEPS=200000
NUM_EPOCHS=None

PARAMS=basic_params
MODEL_DIR=~/attentionnet/store_model/$PARAMS

python main.py \
	--mode=$MODE \
	--train_data=$TRAIN_INPUT \
	--train_label=$TRAIN_TARGET \
	--eval_data=$TEST_INPUT \
	--eval_label=$TEST_TARGET \
	--model_dir=$MODEL_DIR \
	--params=$PARAMS \
	--steps=$TRAIN_STEPS\
	--num_epochs=$NUM_EPOCHS
