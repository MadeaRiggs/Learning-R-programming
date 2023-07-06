"""
Three types of data that refer to an instant in time:
  A date ('2016-08-16')
  A time within a day ('20:11:59 UTC')
  And a date-time. This is a date plus a time ('2018-03-31 18:15:48 UTC') 
"""

library(tidyverse)
library(lubridate)

#to get the current date 
today()

#To get the current date-time 
now()

"""
Three ways you are likely to create date-time formats: 
  From a string
  From an individual date
  From an existing date/time object 
"""
#to Convert date-time from strings
#Arrange the letters y, m, and d in the order of the string
ymd('2021-01-20')
mdy('January 20th, 2021')
dmy('20-Jan-2021')
ymd(20210120)

#To create a date-time from a date. Add an underscore and one or more of the letters h, m, and s (hours, minutes, seconds) 
ymd_hms('2021-01-20 20:11:59')
mdy_hm('01/20/2021 08:01')

#to switch between a date-time and a date/  to convert a date-time to a date
as_date(now())

#to manually create a dataframe
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

#to create a new folder/ directory
dir.create ('destination_folder')

#to create new files
file.create ('new_text_file.txt') 
file.create ('new_word_file.docx') 
file.create ('new_csv_file.csv') 

#to copy a file
file.copy ("new_text_file.txt", 'destination_folder')

#to delete the files
unlink("new_csv_file.csv")
unlink("new_text_file.txt")
unlink("new_word_file.docx")

#to create a 2x3 (two rows by three columns) matrix containing the values 3-8
matrix(c(3:8), nrow = 2)
# OR
matrix(c(3:8), ncol = 3)

#A vignette is documentation that acts as a guide to an R package
browseVignettes("ggplot2")
