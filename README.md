## Requirements 
* `python 3.6+`
* `torch 1.x`
* `fairseq`
* `pytorch_transformers` (for AdamW and WarmpUpScheduler)

## Setting up

```bash
export PARAM_SET=base # change to 'large' to use the XLM-R large architecture

wget -P pretrained_models https://dl.fbaipublicfiles.com/fairseq/models/xlmr.$PARAM_SET.tar.gz
tar xzvf pretrained_models/xlmr.$PARAM_SET.tar.gz  --directory pretrained_models/
rm -r pretrained_models/xlmr.$PARAM_SET.tar.gz
```

## Training and evaluating
The code expects the data directory passed to contain 3 dataset splits: `train.txt`, `valid.txt` and `test.txt`.

```
python main.py --data_dir=<folder with train, dev, test split files>/ --task_name=ner --output_dir=<folder where model will be saved>/ --max_seq_length=512 --num_train_epochs 1 --do_eval --warmup_proportion=0.1 --pretrained_path pretrained_models/xlmr.base/ --learning_rate 0.00007 --eval_on test --train_batch_size 4 --dropout 0.2 --eval_filename=eval_results.txt
```

## Inferencing
* To obtain inference from saved models 

```
python main.py --data_dir=<folder with train, dev, test split files>/ --task_name=ner --output_dir=<folder where the saved model is present>/ --max_seq_length=512 --do_eval --pretrained_path pretrained_models/xlmr.base/ --eval_on test --eval_filename=eval_results_infer.txt
```

# SDU@AAAI-22 - Shared Task 1: Acronym Extraction

This repository contains the acronym extraction training and development set along with the evaluation scripts for the [acronym extraction task at SDU@AAAI-22](https://sites.google.com/view/sdu-aaai22/shared-task).

# Dataset

The dataset folder contains data for six languages English (Legal domain and Scientific domain), French, Spanish, Danish, Persian, and Vietnamese. The corresponding folder for each language contains two files:

- **train.json**: The training samples for acronym extraction task. Each sample has three attributes:
  - text: The string value of the sample text
  - acronyms: A list of tuples representing the acronyms in the text. Each tuple has two integer value representing the index of the first and last character of the acronym in the text, respectively.
  - long-forms: A list of tuples representing the long-forms in the text. Each tuple has two integer value representing the index of the first and last character of the long-form in the text, respectively.
  - id: The unique ID of the sample
- **dev.json**: The development set for acronym extraction task. The samples in `dev.json` have the same attributes as the samples in `train.json`.


# Code
In order to familiarize the participants with this task, we provide a rule-based model in the `code` directory. In this baseline, the words that more than 60% of their characters are uppercased are selected as acronym. To select long-forms, if the initial characters of the preceeding words before an acronym can form the acronym they are selected as long-form. To run this model, use the following command:

`python code/baseline.py -input <path/to/input.json> -output <path/to/output.json>`

Please replace the `<path/to/input.json>` and `<path/to/output.json>` with the real paths to the input file (e.g., `dataset/dev.json`) and output file. The output file contains the predictions and can be evaluated by the scorer using the command described in the next section.
  
# Evaluation

To evaluate the predictions, run the following command:

`python scorer.py -g path/to/gold.json -p path/to/predictions.json`

The `path/to/gold.json` and `path/to/predictions.json` should be replaced with the real paths to the gold file (e.g., `dataset/dev.json` for evaluation on development set) and predictions file (i.e., the predictions generated by your system. Note that it should be in the same format as `dataset/dev.json` or `dataset/train.json` files). The official evaluation metrics are the macro-averaged precision, recall and F1 for acronym and long-form predictions. For verbose evaluation (including the micro-averaged precision, recall and F1 and also short form and long form scores seperatedly), use the following command:

`python scorer.py -g path/to/gold.json -p path/to/predictions.json -v`

# Participation

In order to participate, please first fill out this form to register for the shared tasks: https://forms.gle/njVArce6cwgFmZjG7. The team name that is provided in this form will be used in the subsequent submissions and communications. The shared task is organized as a CodaLab competition and is accessible from [here](https://competitions.codalab.org/competitions/34925). There are two separate phases:
- *Development Phase*: In this phase, the participants will use the training/development sets provided in this repository to design and develop their models. 
- *Evaluation Phase*: 10 days before the system runs due, i.e., 1st November 2021, the test set is released here. The test set has the same distribution and format as the development set. Run your model on the provided test set and save the prediction results in a Json file with the same format as the "dev.json" file. Name the prediction file as "**output.json**" and submit the file to CodaLab competition page.

For more information, see [SDU@AAAI-22](https://sites.google.com/view/sdu-aaai22/shared-task).

# Licenses
The dataset provided for this shared task is licensed under [CC BY-NC-SA 4.0 international license](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode), and the evaluation script and the baseline are licensed under MIT license.
