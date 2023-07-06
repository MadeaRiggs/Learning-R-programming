#the here package makes referencing files easier
install.packages("here")
library("here")

#Skimr package makes summarizing data really easy and let's you skim through it more quickly
install.packages("skimr")
library("skimr")

#Janitor package has functions for cleaning data
install.packages("janitor")
library("janitor")

#to load dataset from packages
install.packages("palmerpenguins")
library("palmerpenguins")

#to get summaries of our data frame:
#to get comprehensive summary of a dataset
skim_without_charts(penguins)
#OR
library("tidyverse")
glimpse(penguins)
#OR
head(penguins)
#OR
#to specify certain column  
penguins %>% 
  select(species)
#to exclude column we don't need
penguins %>% 
  select(-species)

#to change column names
penguins %>% 
  rename(island_new= island)
#to change column names to be more consistent
#e.g to make our column names be all uppercase
rename_with(penguins, toupper)
#to make all column names be in lower case
rename_with(penguins, tolower)

#to make sure that the column names are unique and consistent
clean_names(penguins)

#to choose which variable we want to sort by: 
#in ascending order
penguins %>% 
  arrange(bill_length_mm)
#to choose which variable we want to sort by in descending order
penguins %>% 
  arrange(-bill_length_mm)

penguins2 <- penguins %>% arrange(-bill_length_mm)
penguins2

#OR
#group by mean
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm= mean(bill_length_mm))
#group by max
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm= max(bill_length_mm))
#to perform several operations
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_bl= max(bill_length_mm), mean_bl= mean(bill_length_mm))

#to filter data
penguins %>% 
  filter(species== "Adelie")
#to filter data
