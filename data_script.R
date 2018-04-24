# Description -------------------------------------------------------------

# We'll fill this in later with comments....




# R Packages --------------------------------------------------------------
library(tidyverse)




# Load Data ---------------------------------------------------------------

energy.data <- read.csv("data/01330006-eng.csv")


#calculate the net exports

crude.oil.barrels.ne <- energy.data %>%
  select(-c(Vector, Coordinate)) %>%
  filter(STA == "Barrels") %>%
  filter(PRO == "Crude oil and equivalent products") %>%
  spread(key = PIP, value = Value) %>%
  mutate(Net.Exports = Exports - Imports) %>%
  group_by(Ref_Date, GEO) %>%
  summarise(Total.Net.Exports = sum(Net.Exports))















