library(tidyverse)
library(readxl)
library(janitor)

samples <- read_excel("TS_poo_2022.xlsx")

glimpse(samples)

samples |> 
  rename(sample_date = Sample_Date) |> 
  mutate(id = 1:n()) |> 
  relocate(id) |> 
  relocate(sample_date, .before = source_location) 
