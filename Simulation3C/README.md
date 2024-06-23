# Simulation study

*This project was rendered with ASReview-Makita version 0.0.0.*

This project was rendered from the Makita-basic template. See [asreview/asreview-makita#templates](https://github.com/asreview/asreview-makita#templates) for template rules and formats.

The template is described as: 'Basic simulation for N runs'.

## Installation

This project depends on Python 3.7 or later (python.org/download), and [ASReview](https://asreview.nl/download/). Install the following dependencies to run the simulation and analysis in this project.

```sh
pip install asreview>=1.0 asreview-insights>=1.1.2 asreview-datatools
```

If wordcloud images are required, install the following dependencies.

```sh
pip install asreview-wordcloud
```

## Data

The performance on the following datasets is evaluated:

- data\brouwerschoot.csv

## Run simulation

To start the simulation, run the `jobs.bat` file.

## Structure

The following files are found in this project:

    📦Makita
    ├── 📜README.md
    ├── 📜jobs.bat
    ├── 📂data
    │   ├── 📜brouwerschoot.csv
    ├── 📂scripts
    │   ├── 📜get_plot.py
    │   ├── 📜merge_descriptives.py
    │   ├── 📜merge_metrics.py
    │   ├── 📜merge_tds.py
    │   └── 📜...
    └── 📂output
        ├── 📂simulation
        |   └── 📂brouwerschoot
        |       ├── 📂descriptives
        |       |   └── 📜data_stats_brouwerschoot.json
        |       ├── 📂state_files
        |       |   ├── 📜sim_brouwerschoot_`x`.asreview
        |       |   └── 📜...
        |       └── 📂metrics
        |           ├── 📜metrics_sim_brouwerschoot_`x`.json
        |           └── 📜...
        ├── 📂tables
        |   ├── 📜data_descriptives.csv
        |   ├── 📜data_descriptives.xlsx
        |   ├── 📜tds_sim_brouwerschoot.csv
        |   ├── 📜tds_sim_brouwerschoot.xlsx
        |   ├── 📜tds_summary.csv
        |   ├── 📜tds_summary.xlsx
        |   ├── 📜metrics_sim_brouwerschoot_metrics.csv
        |   ├── 📜metrics_sim_brouwerschoot_metrics.xlsx
        |   ├── 📜metrics_summary.csv
        |   └── 📜metrics_summary.xlsx
        └── 📂figures
            ├── 📈plot_recall_brouwerschoot.png
            ├── 📈wordcloud_brouwerschoot.png
            ├── 📈wordcloud_relevant_brouwerschoot.png
            └── 📈wordcloud_irrelevant_brouwerschoot.png
