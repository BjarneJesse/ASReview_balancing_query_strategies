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

:: Create config.ini with query_param mix_ratio
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.05.ini
echo mix_ratio=0.05 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.05.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.10.ini
echo mix_ratio=0.10 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.10.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.15.ini
echo mix_ratio=0.15 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.15.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.20.ini
echo mix_ratio=0.20 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.20.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.25.ini
echo mix_ratio=0.25 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.25.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.30.ini
echo mix_ratio=0.30 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.30.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.35.ini
echo mix_ratio=0.35 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.35.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.40.ini
echo mix_ratio=0.40 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.40.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.45.ini
echo mix_ratio=0.45 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.45.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.50.ini
echo mix_ratio=0.50 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.50.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.55.ini
echo mix_ratio=0.55 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.55.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.60.ini
echo mix_ratio=0.60 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.60.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.65.ini
echo mix_ratio=0.65 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.65.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.70.ini
echo mix_ratio=0.70 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.70.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.75.ini
echo mix_ratio=0.75 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.75.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.80.ini
echo mix_ratio=0.80 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.80.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.85.ini
echo mix_ratio=0.85 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.85.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.90.ini
echo mix_ratio=0.90 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.90.ini
echo [query_param] > output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.95.ini
echo mix_ratio=0.95 >> output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.95.ini

:: Simulate runs
mkdir output\simulation\van_de_Schoot_2018\state_files
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.05.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.05.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.05.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.05.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.10.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.10.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.10.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.10.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.15.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.15.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.15.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.15.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.20.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.20.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.20.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.20.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.25.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.25.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.25.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.25.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.30.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.30.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.30.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.30.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.35.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.35.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.35.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.35.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.40.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.40.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.40.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.40.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.45.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.45.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.45.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.45.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.50.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.50.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.50.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.50.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.55.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.55.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.55.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.55.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.60.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.60.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.60.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.60.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.65.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.65.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.65.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.65.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.70.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.70.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.70.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.70.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.75.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.75.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.75.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.75.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.80.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.80.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.80.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.80.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.85.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.85.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.85.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.85.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.90.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.90.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.90.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.90.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.95.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_uncertainty -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_0.95.ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_0.95.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_0.95.json
python -m asreview simulate data\van_de_Schoot_2018.csv -s output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_1.0.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max -b double --n_instances 1 --stop_if min --config_file output\simulation\van_de_Schoot_2018\van_de_Schoot_2018_config_1.0ini
python -m asreview metrics output\simulation\van_de_Schoot_2018\state_files\sim_van_de_Schoot_2018_0_ratio_1.0.asreview -o output\simulation\van_de_Schoot_2018\metrics\metrics_sim_van_de_Schoot_2018_0_ratio_1.0.json

:: Generate plot and tables for dataset
python scripts\get_plot.py -s output\simulation\van_de_Schoot_2018\state_files\ -o output\figures\plot_recall_sim_van_de_Schoot_2018.png
python scripts\merge_metrics.py -s output\simulation\van_de_Schoot_2018\metrics\ -o output\tables\metrics\metrics_sim_van_de_Schoot_2018.csv
python scripts\merge_tds.py -s output\simulation\van_de_Schoot_2018\metrics\ -o output\tables\time_to_discovery\tds_sim_van_de_Schoot_2018.csv

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py