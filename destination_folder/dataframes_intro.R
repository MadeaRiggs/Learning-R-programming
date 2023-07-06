#to load dataset
data("diamonds")

#to display the dataframe
View(diamonds)
head(diamonds) #to view the first 6 rows

#to check the structure of the dataframe
str(diamonds)

#to only get the column names
colnames(diamonds)

#to make changes to the dataframe i.e add a column etc
library(tidyverse)
mutate(diamonds, carat_2= carat*100)

#creating Tibbles
library(tidyverse)
data("diamonds")
as_tibble(diamonds)

#to show samples of inbuilt CSV datasets
readr_example()
#to read one of the CSV datasets
read_csv(readr_example("chickens.csv"))

#To import spreadsheet data into R
library(readxl)
#to show samples of inbuilt Excel datasets
readxl_example()
#to read one of the Excel datasets
read_excel(readxl_example("clippy.xlsx"))
#to specify a sheet by name or number
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")
