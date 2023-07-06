library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)


ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))

?geom_point()

#the plus sign should NOT be in a new line as seen below
ggplot(data = penguins) 
+ geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

####Changing Aesthetics of variables i.e color, shape, size
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape= species, color= species))

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape= species, color= species, size= species))

#to bring transparency 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha= species))

#to make all variables be a certain color. The 'color' command should be outside aes() function
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color= "purple")

###Changing the Geoms of the plot
#to create a scatter plot
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#to create a smooth line graph- to show general trends in data
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#to combine scatter and line plots
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#to plot a separate line for each species of penguin
ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype= species))
#to deal with over-plotting-when the data points in a plot overlap with each other
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#to create a bar chart
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))
#to add color to the outline of the bars
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color=cut))
#to add color inside the bars
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill=cut))
#to create a stacked chart, use 'fill' command with another variable  
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill=clarity))

###To display smaller groups or subsets of your data
#To facet your plot by a single variable
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_wrap(~species)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = color, fill=cut)) +
  facet_wrap(~cut)
#To facet your plot with two variables-split the plot into facets vertically by the values of the first variable and horizontally by the values of the second variable
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  facet_grid(sex~species)
#to filter data for plotting 
penguins %>%
  filter(species == "Gentoo") %>%  
  ggplot(aes(x = flipper_length_mm, y = body_mass_g, color=species)) +  
  geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth(method = "lm")

###Annotations and Labels
#to add title 
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title= "Palmer Penguins: Body Mass Vs Flipper Length")
#to add subtitle
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title= "Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species")
#to add caption
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title= "Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species", caption = "Data collected by Dr. Kristen Gorman")

#to annotate-to put text inside the grid to call out specific data points
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title= "Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species", caption = "Data collected by Dr. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="Gentoos are the largest", color= "purple", fontface="bold", size=4.5, angle=25)

#OR assign the codes to a variable to make the code short
p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) +
  labs(title= "Palmer Penguins: Body Mass Vs Flipper Length", subtitle = "Sample of 3 Penguin Species", caption = "Data collected by Dr. Kristen Gorman")
p + annotate("text", x=220, y=3500, label="Gentoos are the largest", color= "purple", fontface="bold", size=4.5, angle=25)
