# ASReview_balancing_query_strategies

## Overview

The purpose of this project is to explore how the choice of the balancing strategy and query strategy influences the performance of the active learning model ASReview. Specifically, we aim to adress the issue of 'trap formation' found by research of the RUG where researchers may only encounter onse side of the relevant papers. By optimizing these paramers, we seek seek to enhance the models abillity to provide comprehensive view of all the relevant literature. 

This repository contain the files to reproduce the simulation study and subsequent analysis of the data for this project (which was conducted for a Bachalor's thesis Sociology from Utrecht University). 

## Table of Contents

- ```Simulation1A```
- ```Simulation1B```
- ```Simulation2A```

## Simulation1A

In the first simulation, all current query strategies are simulated to analyze their performance and effectiveness in the context of this dataset. This simulation gives a comparison and evaluation of each of the current strategy's impact on a 'normal' dataset. We will do this with all the different parameters on default. The data from van_de_Schoot_2018 out the SYNGERGY dataset wil be used.

## Simulation1B

In this simulation, all current balancing strategies are simulated to analyze their performance and effectiveness in the context of this dataset. This simulation gives a comparison and evaluation of each of the current strategy's impact on a 'normal' dataset. We will do this with all the different parameters on default. The data from van_de_Schoot_2018 out the SYNGERGY dataset wil be used.

## Simulation2A

In this simulation the interaction between the balancing strategy 'simple' and the different query-strategies are analyzed. This simulation gives a comparison and evaluation of each of the query-strategies with the balancing strategy set on 'simple', This means there is no balancing strategy. The data from van_de_Schoot_2018 out the SYNGERGY dataset wil be used.

## Simulation2A

In this simulation the interaction between the balancing strategy 'undersample' and the different query-strategies are analyzed. This simulation gives a comparison and evaluation of each of the query-strategies with the balancing strategy set on 'undersample', This means there is no balancing strategy. The data from van_de_Schoot_2018 out the SYNGERGY dataset wil be used.

## How to reproduce the project

### 1. Acces the data
Please refer to the readme from the data folder

### 2. Install ASReview (and Makita)
Please refer to the readme in the scripts folder.

### 3. Run the jobs.bat files in the simulation folders
for some of the simulations a custom config file is used. how you can use this in your simulation can be read on the readme file on the github page of makita.

### 4. Run the analysis notebook to generate the results
Open analysis_notebook and run the scripts (making sure to change the directory to where you have the balancing_query_strategies_project repo stored on your local computer).


