@ echo off
COLOR E0
:: version 0.0.0

:: Create folder structure. By default, the folder 'output' is used to store output.
mkdir output
mkdir output\simulation
mkdir output\tables
mkdir output\tables\metrics
mkdir output\tables\time_to_discovery
mkdir output\figures

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::: DATASET: van_de_Schoot_2018
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\van_de_Schoot_2018\
mkdir output\simulation\van_de_Schoot_2018\metrics

:: Collect descriptives about the dataset van_de_Schoot_2018
mkdir output\simulation\van_de_Schoot_2018\descriptives
python -m asreview data describe data\van_de_Schoot_2018.csv -o output\simulation\van_de_Schoot_2018\descriptives\data_stats_van_de_Schoot_2018.json

:: Generate wordcloud visualizations of all datasets
python -m asreview wordcloud data\van_de_Schoot_2018.csv -o output\figures\wordcloud_van_de_Schoot_2018.png --width 800 --height 500
python -m asreview wordcloud data\van_de_Schoot_2018.csv -o output\figures\wordcloud_relevant_van_de_Schoot_2018.png --width 800 --height 500 --relevant
python -m asreview wordcloud data\van_de_Schoot_2018.csv -o output\figures\wordcloud_irrelevant_van_de_Schoot_2018.png --width 800 --height 500 --irrelevant

:: Simulate runs
mkdir output\simulation\van_de_Schoot_2018\state_files

:: Classifier = nb, Feature extractor = tfidf, Query strategy = max, Balance_strategy = simple
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_simple_0.asreview --model nb --query_strategy max --balance_strategy simple --feature_extraction tfidf --init_seed 535 --seed 165 -q max -b simple --n_instances 1 --stop_if min
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_simple_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_nb_tfidf_max_simple_0.json

:: Classifier = nb, Feature extractor = tfidf, Query strategy = max_random, Balance_strategy = simple
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_random_simple_0.asreview --model nb --query_strategy max_random --balance_strategy simple --feature_extraction tfidf --init_seed 535 --seed 165 -q max_random -b simple --n_instances 1 --stop_if min
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_random_simple_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_nb_tfidf_max_random_simple_0.json

:: Classifier = nb, Feature extractor = tfidf, Query strategy = max_uncertainty, Balance_strategy = simple
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_uncertainty_simple_0.asreview --model nb --query_strategy max_uncertainty --balance_strategy simple --feature_extraction tfidf --init_seed 535 --seed 165 -q max_uncertainty -b simple --n_instances 1 --stop_if min
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_max_uncertainty_simple_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_nb_tfidf_max_uncertainty_simple_0.json

:: Classifier = nb, Feature extractor = tfidf, Query strategy = uncertainty, Balance_strategy = simple
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_uncertainty_simple_0.asreview --model nb --query_strategy uncertainty --balance_strategy simple --feature_extraction tfidf --init_seed 535 --seed 165 -q uncertainty -b simple --n_instances 1 --stop_if min
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_uncertainty_simple_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_nb_tfidf_uncertainty_simple_0.json

:: Classifier = nb, Feature extractor = tfidf, Query strategy = cluster, Balance_strategy = simple
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_cluster_simple_0.asreview --model nb --query_strategy cluster --balance_strategy simple --feature_extraction tfidf --init_seed 535 --seed 165 -q cluster -b simple --n_instances 1 --stop_if min
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_nb_tfidf_cluster_simple_0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_nb_tfidf_cluster_simple_0.json

:: Generate plot and tables for dataset
python scripts\get_plot.py -s output\simulation\van_de_Schoot_2018\state_files\ -o output\figures\plot_recall_sim_van_de_Schoot_2018.png --show_legend model
python scripts\merge_metrics.py -s output\simulation\van_de_Schoot_2018\metrics\ -o output\tables\metrics\metrics_sim_van_de_Schoot_2018.csv
python scripts\merge_tds.py -s output\simulation\van_de_Schoot_2018\metrics\ -o output\tables\time_to_discovery\tds_sim_van_de_Schoot_2018.csv

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py
