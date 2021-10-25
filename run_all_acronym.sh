#!/bin/bash

## USING XLM BASE
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/eng/legal/ --task_name=ner --output_dir=model_eng_legal_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/eng/scientific/ --task_name=ner --output_dir=model_eng_scientific_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/dan/ --task_name=ner --output_dir=model_dan_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/esp/ --task_name=ner --output_dir=model_esp_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/fre/ --task_name=ner --output_dir=model_fre_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/per/ --task_name=ner --output_dir=model_per_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/vie/ --task_name=ner --output_dir=model_vie_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2

## USING XLM LARGE
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/eng/legal/ --task_name=ner --output_dir=model_eng_legal_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/eng/scientific/ --task_name=ner --output_dir=model_eng_scientific_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/dan/ --task_name=ner --output_dir=model_dan_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/esp/ --task_name=ner --output_dir=model_esp_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/fre/ --task_name=ner --output_dir=model_fre_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/per/ --task_name=ner --output_dir=model_per_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/vie/ --task_name=ner --output_dir=model_vie_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2

## USING ALL TRAIN WITH XLM BASE
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/engAll/legal/ --task_name=ner --output_dir=model_all_train_eng_legal_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/engAll/scientific/ --task_name=ner --output_dir=model_eng_scientific_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/danAll/ --task_name=ner --output_dir=model_all_train_dan_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/espAll/ --task_name=ner --output_dir=model_all_train_esp_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/freAll/ --task_name=ner --output_dir=model_all_train_fre_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/perAll/ --task_name=ner --output_dir=model_all_train_per_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/vieAll/ --task_name=ner --output_dir=model_all_train_vie_xb/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2

## USING ALL TRAIN WITH XLM LARGE
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/engAll/legal/ --task_name=ner --output_dir=model_all_train_eng_legal_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/engAll/scientific/ --task_name=ner --output_dir=model_eng_scientific_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/danAll/ --task_name=ner --output_dir=model_all_train_dan_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2 
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/espAll/ --task_name=ner --output_dir=model_all_train_esp_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/freAll/ --task_name=ner --output_dir=model_all_train_fre_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/perAll/ --task_name=ner --output_dir=model_all_train_per_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
python main.py --data_dir=/home/diptesh/workspace/PR-AAAI22-SDU-ST1-AE/processed/vieAll/ --task_name=ner --output_dir=model_all_train_vie_xl/ --max_seq_length=16 --num_train_epochs 20  --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.large/ --learning_rate 0.00007 --do_train --eval_on test --train_batch_size 4 --dropout 0.2
