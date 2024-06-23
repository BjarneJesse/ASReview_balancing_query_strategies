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
:::::: DATASET: brouwerschoot
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Create output folder
mkdir output\simulation\brouwerschoot\
mkdir output\simulation\brouwerschoot\metrics

:: Collect descriptives about the dataset brouwerschoot
mkdir output\simulation\brouwerschoot\descriptives
python -m asreview data describe data\brouwerschoot.csv -o output\simulation\brouwerschoot\descriptives\data_stats_brouwerschoot.json

:: Create config.ini with query_param mix_ratio
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.05.ini
echo mix_ratio=0.05 >> output\simulation\brouwerschoot\brouwerschoot_config_0.05.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.10.ini
echo mix_ratio=0.10 >> output\simulation\brouwerschoot\brouwerschoot_config_0.10.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.15.ini
echo mix_ratio=0.15 >> output\simulation\brouwerschoot\brouwerschoot_config_0.15.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.20.ini
echo mix_ratio=0.20 >> output\simulation\brouwerschoot\brouwerschoot_config_0.20.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.25.ini
echo mix_ratio=0.25 >> output\simulation\brouwerschoot\brouwerschoot_config_0.25.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.30.ini
echo mix_ratio=0.30 >> output\simulation\brouwerschoot\brouwerschoot_config_0.30.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.35.ini
echo mix_ratio=0.35 >> output\simulation\brouwerschoot\brouwerschoot_config_0.35.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.40.ini
echo mix_ratio=0.40 >> output\simulation\brouwerschoot\brouwerschoot_config_0.40.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.45.ini
echo mix_ratio=0.45 >> output\simulation\brouwerschoot\brouwerschoot_config_0.45.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.50.ini
echo mix_ratio=0.50 >> output\simulation\brouwerschoot\brouwerschoot_config_0.50.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.55.ini
echo mix_ratio=0.55 >> output\simulation\brouwerschoot\brouwerschoot_config_0.55.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.60.ini
echo mix_ratio=0.60 >> output\simulation\brouwerschoot\brouwerschoot_config_0.60.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.65.ini
echo mix_ratio=0.65 >> output\simulation\brouwerschoot\brouwerschoot_config_0.65.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.70.ini
echo mix_ratio=0.70 >> output\simulation\brouwerschoot\brouwerschoot_config_0.70.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.75.ini
echo mix_ratio=0.75 >> output\simulation\brouwerschoot\brouwerschoot_config_0.75.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.80.ini
echo mix_ratio=0.80 >> output\simulation\brouwerschoot\brouwerschoot_config_0.80.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.85.ini
echo mix_ratio=0.85 >> output\simulation\brouwerschoot\brouwerschoot_config_0.85.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.90.ini
echo mix_ratio=0.90 >> output\simulation\brouwerschoot\brouwerschoot_config_0.90.ini
echo [query_param] > output\simulation\brouwerschoot\brouwerschoot_config_0.95.ini
echo mix_ratio=0.95 >> output\simulation\brouwerschoot\brouwerschoot_config_0.95.ini

:: Simulate runs
mkdir output\simulation\brouwerschoot\state_files
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.05.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.05.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.05.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.05.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.10.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.10.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.10.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.10.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.15.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.15.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.15.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.15.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.20.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.20.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.20.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.20.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.25.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.25.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.25.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.25.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.30.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.30.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.30.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.30.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.35.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.35.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.35.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.35.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.40.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.40.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.40.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.40.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.45.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.45.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.45.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.45.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.50.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.50.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.50.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.50.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.55.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.55.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.55.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.55.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.60.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.60.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.60.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.60.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.65.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.65.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.65.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.65.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.70.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.70.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.70.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.70.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.75.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.75.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.75.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.75.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.80.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.80.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.80.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.80.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.85.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.85.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.85.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.85.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.90.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.90.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.90.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.90.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.95.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max_random -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_0.95.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_0.95.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_0.95.json
python -m asreview simulate data\brouwerschoot.csv -s output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_1.0.asreview --init_seed 535 --seed 165 -m nb -e tfidf -q max -b double --n_instances 1 --stop_if min --config_file output\simulation\brouwerschoot\brouwerschoot_config_1.0.ini
python -m asreview metrics output\simulation\brouwerschoot\state_files\sim_brouwerschoot_0_ratio_1.0.asreview -o output\simulation\brouwerschoot\metrics\metrics_sim_brouwerschoot_0_ratio_1.0.json

:: Generate plot and tables for dataset
python scripts\get_plot.py -s output\simulation\brouwerschoot\state_files\ -o output\figures\plot_recall_sim_brouwerschoot.png
python scripts\merge_metrics.py -s output\simulation\brouwerschoot\metrics\ -o output\tables\metrics\metrics_sim_brouwerschoot.csv
python scripts\merge_tds.py -s output\simulation\brouwerschoot\metrics\ -o output\tables\time_to_discovery\tds_sim_brouwerschoot.csv

:: Merge descriptives and metrics
python scripts\merge_descriptives.py
python scripts\merge_metrics.py