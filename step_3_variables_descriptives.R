library(tidyverse)
library(psych)
library(here)

#Load Datasets (semicolon-delimited CSV files)
df_dataset_all <- read_csv2(here("data", "BTPS_all_data.csv"), show_col_types = FALSE)
df_dataset_val1 <- read_csv2(here("data", "BTPS_validity_data1_scored.csv"), show_col_types = FALSE)
df_dataset_val2 <- read_csv2(here("data", "BTPS_validity_data2_scored.csv"), show_col_types = FALSE)

#Means, Standard Deviations and Cronbach's alpha of Study Variables (Form A, N = 153)

#(Convert tpq 24 to numeric as it contains a text missing value drom Ecxel)
df_dataset_val1$tpq24 <- as.numeric(df_dataset_val1$tpq24)

#TPQue5
#Extraversion
print(round(mean(df_dataset_val1$extrv), 1))
print(round(sd(df_dataset_val1$extrv), 1))
print(round(psych::alpha(df_dataset_val1[, c("tpq1", "tpq9", "tpq10", "tpq11", "tpq22", "tpq23", "tpq24", "tpq37", "tpq38", "tpq39", "tpq40", "tpq49", "tpq61", "tpq62", "tpq63")])$total$raw_alpha, 2))

#Neuroticism
print(round(mean(df_dataset_val1$neurot), 1))
print(round(sd(df_dataset_val1$neurot), 1))
print(round(psych::alpha(df_dataset_val1[, c("tpq2", "tpq3", "tpq12", "tpq13", "tpq14", "tpq25", "tpq26", "tpq27", "tpq41", "tpq42", "tpq43", "tpq50", "tpq51", "tpq52", "tpq64")])$total$raw_alpha, 2))

#Openness to Experience
print(round(mean(df_dataset_val1$open), 1))
print(round(sd(df_dataset_val1$open), 1))
print(round(psych::alpha(df_dataset_val1[, c("tpq4", "tpq5", "tpq15", "tpq16", "tpq17", "tpq28", "tpq29", "tpq44", "tpq45", "tpq53", "tpq54", "tpq65", "tpq66", "tpq67", "tpq68")])$total$raw_alpha, 2))

#Agreeableness
print(round(mean(df_dataset_val1$agree), 1))
print(round(sd(df_dataset_val1$agree), 1))
print(round(psych::alpha(df_dataset_val1[, c("tpq6", "tpq7", "tpq18", "tpq30", "tpq31", "tpq32", "tpq33", "tpq46", "tpq55", "tpq56", "tpq57", "tpq69", "tpq70", "tpq71", "tpq72")])$total$raw_alpha, 2))

#Conscientiousness
print(round(mean(df_dataset_val1$consc), 1))
print(round(sd(df_dataset_val1$consc), 1))
print(round(psych::alpha(df_dataset_val1[, c("tpq8", "tpq19", "tpq20", "tpq21", "tpq34", "tpq35", "tpq36", "tpq47", "tpq48", "tpq58", "tpq59", "tpq60", "tpq73", "tpq74", "tpq75")])$total$raw_alpha, 2))


#Means, Standard Deviations and Cronbach's alpha of Study Variables (Form B, N = 151)

#SWLS
print(round(mean(df_dataset_val2$swls_tot), 1))
print(round(sd(df_dataset_val2$swls_tot), 1))
print(round(psych::alpha(df_dataset_val2[, c("swls1", "swls2", "swls3", "swls4", "swls5")])$total$raw_alpha, 2))

#PANAS
#Positive Affect
print(round(mean(df_dataset_val2$panas_po), 1))
print(round(sd(df_dataset_val2$panas_po), 1))
print(round(psych::alpha(df_dataset_val2[, c("panas1", "panas3", "panas5", "panas9", "panas10", "panas12", "panas14", "panas16", "panas17", "panas19")])$total$raw_alpha, 2))

#Negative Affect
print(round(mean(df_dataset_val2$panas_ne), 1))
print(round(sd(df_dataset_val2$panas_ne), 1))
print(round(psych::alpha(df_dataset_val2[, c("panas2", "panas4", "panas6", "panas7", "panas8", "panas11", "panas13", "panas15", "panas18", "panas20")])$total$raw_alpha, 2))

#DASS-21
#Stress
print(round(mean(df_dataset_val2$dass_strs), 1))
print(round(sd(df_dataset_val2$dass_strs), 1))
print(round(psych::alpha(df_dataset_val2[, c("dass1", "dass6", "dass8", "dass11", "dass12", "dass14", "dass18")])$total$raw_alpha, 2))

#Anxiety
print(round(mean(df_dataset_val2$dass_anx), 1))
print(round(sd(df_dataset_val2$dass_anx), 1))
print(round(psych::alpha(df_dataset_val2[, c("dass2", "dass4", "dass7", "dass9", "dass15", "dass19", "dass20")])$total$raw_alpha, 2))

#Depression
print(round(mean(df_dataset_val2$dass_dprs), 1))
print(round(sd(df_dataset_val2$dass_dprs), 1))
print(round(psych::alpha(df_dataset_val2[, c("dass3", "dass5", "dass10", "dass13", "dass16", "dass17", "dass21")])$total$raw_alpha, 2))

#DASS-21 Total
print(round(mean(df_dataset_val2$dass_total), 1))
print(round(sd(df_dataset_val2$dass_total), 1))
print(round(psych::alpha(df_dataset_val2[, c("dass1", "dass2", "dass3", "dass4", "dass5", "dass6", "dass7", "dass8", "dass9", "dass10", "dass11", "dass12", "dass13", "dass14", "dass15", "dass16", "dass17", "dass18", "dass19", "dass20", "dass21")])$total$raw_alpha, 2))

#GPS
print(round(mean(df_dataset_val2$Lay_total), 1))
print(round(sd(df_dataset_val2$Lay_total), 1))
print(round(psych::alpha(df_dataset_val2[, c("lay1", "lay2", "lay3", "lay4", "lay5", "lay6", "lay7", "lay8", "lay9", "lay10", "lay11", "lay12", "lay13", "lay14", "lay15", "lay16", "lay17", "lay18", "lay19", "lay20")])$total$raw_alpha, 2))

#LOT-R
print(round(mean(df_dataset_val2$LotR_tot), 1))
print(round(sd(df_dataset_val2$LotR_tot), 1))
print(round(psych::alpha(df_dataset_val2[, c("lot_r1", "lot_r3", "lot_r4", "lot_r7", "lot_r9")])$total$raw_alpha, 2))