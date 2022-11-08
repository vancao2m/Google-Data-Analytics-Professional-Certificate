install.packages("here")
library(here)

install.packages("skimr")
library(skimr)

install.packages("janitor")
library(janitor)

library(dplyr)

install.packages("palmerpenguins")
library(palmerpenguins)

#show ONLY species column 
penguins %>% 
  select(species)

#show EVERYTHING BUT species column 
penguins %>% 
  select(-species)

#rename a collumn (rename a variable)
penguins %>% 
  rename(island_new = island)

#change the collumn name to be more consistent 
rename_with(penguins,toupper)
rename_with(penguins,tolower)

#clean to make sure there is only character, number and underscores in names
clean_names(penguins)

