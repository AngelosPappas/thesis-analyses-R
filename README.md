# thesis-analyses-R (under development)

## Psychometric Adaptation and Evaluation of the BTPS in the Greek Population

### Overview
This repository contains the R scripts and statistical analyses conducted as part of my undergraduate thesis on the psychometric adaptation and evaluation of the Big Three Perfectionism Scale (BTPS) in the Greek population.

The project focuses on the linguistic and conceptual adaptation of the instrument, the assessment of its psychometric properties (validity and reliability), and the examination of its hierarchical factor structure through second-order Confirmatory Factor Analysis (CFA), based on Smith et al. (2016).

### Purpose
The aim of this repository is to provide a transparent and reproducible R workflow for the statistical analyses conducted in the thesis.

### Repository Structure
- `data/`: Contains the raw and scored CSV datasets (`BTPS_all_data.csv`, `BTPS_validity_data1_scored.csv`, `BTPS_validity_data2_scored.csv`).
- `R scripts/`: Contains the R scripts for each step of the analysis.
  - `step_1_install_packages.R`: Contains the necessary packages that should be installed.
  - `step_2_sample_descriptives.R`: Sample demographics (age, gender, occupation).
  - `step_3_variables_descriptives.R`: Descriptive statistics (Means, SDs) and Cronbach's alpha for the study variables (Form A and Form B).
 
### Upcoming Analyses
- `step_4_btps_cfa.R`: Second-order Confirmatory Factor Analysis (CFA) of the BTPS hierarchical structure using WLSMV estimation.
- `step_5_btps_reliability.R`: Internal consistency (McDonald's omega) for first- and second-order factors and test-retest reliability (N = 79).
- `step_6_btps_validity.R`: Convergent and discriminant validity analyses (correlations between BTPS and validation scales working as external criteria).

### Packages Used
- `tidyverse`
- `psych`
- `here`

### References
Smith, M. M., Saklofske, D. H., Stoeber, J., & Sherry, S. B. (2016). The Big Three Perfectionism Scale: A new measure of perfectionism. *Journal of Psychoeducational Assessment*, 34(7), 670–687.
