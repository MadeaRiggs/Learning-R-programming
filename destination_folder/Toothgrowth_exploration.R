#to load an already installed dataset
data("ToothGrowth")

#to checkout the data in a new tab
View(ToothGrowth)

install.packages("dplyr")

#to filter dataset based on value
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

#to sort data start with the dataset variable then dataset column 
arrange(filtered_tg, len)# default is Ascending order

#to do all these using nested function
arrange(filter(ToothGrowth, dose==0.5), len)

#to do all these using a pipe ( %>% ) symbol
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose== 0.5) %>% 
  #to group results by specific values in dataset
  group_by(supp) %>% 
  summarize(mean_len= mean(len, na.rm = T), .group = 'drop')
  #arrange(len)
filtered_toothgrowth