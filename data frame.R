#load packages and dataset 
library(ggplot2)
data(diamonds)
View(diamonds)
#create tibble
head(diamonds)
as_tibble(diamonds)
#to know properties of the dataset
str(diamonds) #properties include colname, data types, number of observations
colnames(diamonds) #only show col names

#to change data frame we use mutate function in dplyr package
library(tidyverse)
mutate(diamonds, carat_2 <- carat*100)
mutate(diamonds, carat_3 = carat*100)
#function of mutate are (1) change data frame 
#(2) create a new column to calculate 
#(3) create new column; HOWEVER,the new column can be automatically delete 

#create data frame 

#enter data frames manually by creating vectors and combine them by data.frame
#elements mus be vector! data.frame(name=c())
data.frame(name=c("James","Mike","Joey"), age=c(23,24,30)) 
#the problem of above code line is that the data frame doesn't not have a name so we can not pull it up if needed
#so, the right code is
people <- data.frame(name=c("Joey", "Rachel", "Monica"), age=c(25,23,23))
View(people)

#review
# First, create a vector of any five different fruits. 
fruitname=c("watermelon","strawberry","bluberry","banana","apple")

# Now, create a new vector with a number representing your own personal rank for each fruit. 
#   Give a 1 to the fruit you like the most, and a 5 to the fruit you like the least. 
rank=c(1,1,3,3,1)

# Finally, combine the two vectors into a data frame. 
#   You can call it `fruit_ranks`. Edit the code chunk below and run it to create your data frame.
fruit_ranking <- data.frame(fruitname,rank)
View(fruit_ranking)
# After you run this code chunk, it will create a data frame with your fruits and rankings.  
head(fruit_ranking)
str(fruit_ranking)
colnames(fruit_ranking)
glimpse(fruit_ranking)
mutate(fruit_ranking, rank_100 = rank*10)