#step 1: install and load packages
install.packages("tidyverse")
library(tidyverse)

#step 2: viewing data 
#'diamonds' dataset in 'ggplot2' package
head(diamonds)
str(diamonds) #summarize data 
View(diamonds)
glimpse(diamonds) #preview data 

#return column names #the number in the racket in result are number of columns 
colnames(diamonds)


#Step 3: cleaning data 
#rename columns, variables
rename(diamonds, carat_new = carat)
rename(diamonds, carat_new = carat, cut_new = cut)
#summarize for statistics for data 
summarise(diamonds, mean_carat=mean(carat))

#step 4: visualizing data 
ggplot(data = diamonds,aes(x=carat, y=price))+ geom_point()
#changing color of plot 
ggplot(data = diamonds, aes(x=carat, y=price, color=cut))+geom_point()
#seperate components
ggplot(data = diamonds, aes(x=carat, y=price, color=cut))+
  geom_point()+facet_wrap(~cut)