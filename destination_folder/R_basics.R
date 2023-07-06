# assigning variables
first_variable <- "this is my variable"
second_variable <- 12.5
third_variable = 20
third_variable

#creating vectors- group of data elements of the same type stored in a sequence
vec_1 <- c(13, 48.5, 71, 101.5, 2)
vec_1

#to display the values as integers
vec_2 <- c(1L, 5L, 15L)
vec_2

#pipe is a tool in R for expressing a sequence of multiple operations. A pipe is represented by a % sign, followed by a > sign, and another % sign.

#determine what type of vector
typeof(c("a" , "b"))

#determine length of vector
x <- c(33.5, 57.75, 120.05)
length(x)

# to check if a vector is a specific type
x <- c(2L, 5L, 11L)
is.integer(x)

#to assign a different name to each element of the vector
x <- c(1, 3, 5)
x
names(x) <- c('a', 'b', 'c')
x

#creating a list
list('a', 1L, 1.5, TRUE)

#to determine what types of elements a list contains
str(list('a', 1L, 1.5, TRUE))
z <- list(list(list(1 , 3, 5)))
str(z)

#to name the elements of a list 
list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)