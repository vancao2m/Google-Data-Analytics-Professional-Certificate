#In this scenario, you are a junior data analyst working for a hotel booking company. 
#You have been asked to clean a .csv file that was created after querying a database 
#to combine two different tables from different hotels. 
#In order to learn more about this data, 
#you are going to need to use functions to 
#preview the data's structure, including its columns and rows. 
#also need to use basic cleaning functions to prepare this data for analysis

#import file csv
booking <- read.csv("hotel_bookings.csv")

#create another data frame using `bookings` that focuses on the average daily rate, 
#which is referred to as `adr` in the data frame, and  `adults`
new_booking <- select(booking, 'adr', adults)

#create new variables in your data frame, you can use the `mutate()` function. 
#This will make changes to the data frame, but not to the original data set you imported. 
#That source data will remain unchanged.
library(dplyr)
mutate(new_booking, new_data = adr/adults)
