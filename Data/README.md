# Data

## How to acces the data?

### Synergy dataset

The data used in the current project was the van de Schoot(van de Schoot et al, 2018) and van der Valk (van der Valk et al. 2021) dataset which were taken form the SYNERGY dataset (De Bruin et al., 2023). The SYNERGY dataset can be downloaded by first installing the syngergy-dataset Python package 

```bash
pip install syngergy-dataset
```
Then run this command in the command line. 
```bash
python -m syngergy_dataset get
```
Alternatively, .zip of the dataset can be downloaded at https://dataverse.nl/dataset.xhtml?persistentId=doi:10.34894/HE6NAQ

## How to pre-process the data?

### Data Vstack

To create the merged dataset used in simulation ... the vertical stacking tool from asreview-datatools is used. With this tool several datatool can be exported into one single dataset. This function can be installed via this command.
```bash
pip install asreview-datatools
```
Merging the datasets can then be completed by running this command. 
```bash
asreview data vstack SchootValk.csv van_de_Schoot_2018.csv van_der_Valk_2021.csv
```


