#/bin/bash

python main.py --data_dir=processed/eng/legal/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=eng_legal_eval_results_xb.txt --pred_filename=eng_legal_dev_predictions_xb_512.csv

python main.py --data_dir=processed/eng/scientific/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=eng_scientific_eval_results_xb.txt --pred_filename=eng_scientific_dev_predictions_xb_512.csv

python main.py --data_dir=processed/dan/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=dan_eval_results_xb.txt --pred_filename=dan_dev_predictions_xb_512.csv

python main.py --data_dir=processed/fre/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=fre_eval_results_xb.txt --pred_filename=fre_dev_predictions_xb_512.csv

python main.py --data_dir=processed/esp/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=esp_eval_results_xb.txt --pred_filename=esp_dev_predictions_xb_512.csv

python main.py --data_dir=processed/per/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=per_eval_results_xb.txt --pred_filename=per_dev_predictions_xb_512.csv

python main.py --data_dir=processed/vie/ --task_name=ner --output_dir=results/finetuned_models/model_eng_all_scientific_xb_v1_512 --max_seq_length=512 --do_eval --pretrained_path ../pretrained_models/xlmr.base/ --eval_on test --eval_filename=vie_eval_results_xb.txt --pred_filename=vie_dev_predictions_xb_512.csv
