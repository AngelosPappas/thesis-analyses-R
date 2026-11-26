library(tidyverse)
library(psych)
library(here)

#Load Datasets (semicolon-delimited CSV files)
df_dataset_all <- read_csv2(here("data", "BTPS_all_data.csv"), show_col_types = FALSE)
df_dataset_val1 <- read_csv2(here("data", "BTPS_validity_data1_scored.csv"), show_col_types = FALSE)
df_dataset_val2 <- read_csv2(here("data", "BTPS_validity_data2_scored.csv"), show_col_types = FALSE)

#Sample Demographics (N = 304 with no missing values)

#Age
print(summary(df_dataset_all$age))
print(sd(df_dataset_all$age))

#Gender
print(table(df_dataset_all$gender))
print(round(prop.table(table(df_dataset_all$gender)) * 100, 1))

#Occupation
print(table(df_dataset_all$job))
print(round(prop.table(table(df_dataset_all$job)) * 100, 1))


