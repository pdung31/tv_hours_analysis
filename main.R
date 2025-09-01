library(tidyverse)
library(here)

gss_cat

tv_hours_table <- gss_cat |>
  group_by(marital) |>
  summarise(mean_tv_hours = mean(tvhours, na.rm = TRUE))

write_csv(tv_hours_table, file = here("TV_hours_by_Marital.csv"))