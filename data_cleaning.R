library(tidyverse)
library(readxl)
library(janitor)

samples <- read_excel("TS_poo_2022.xlsx")

glimpse(samples)

samples |> 
  mutate(id = 1:n()) |> 
  relocate(id) |> 
  relocate(Sample_Date, .before = source_location) 
