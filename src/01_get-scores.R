library(tidyverse)

scores <- read_csv("data/raw/scores.csv") %>%
    rename(Unfavorable = `% Unfavorable`,
           Neutral = `% Neutral`,
           Favorable = `% Favorable`,
           Compare_Overall = `Vs. Overall Results`,
           Compare_National_Avg = `Vs. Nat'l Healthcare Avg`) %>%
    mutate_at("Compare_National_Avg", as.numeric)

write_rds(scores, "data/final/scores.Rds")
