# load data and review 
hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
#load packages 
library(ggplot2)
# draw bar chart to demonsrate 
# how many of the transactions are occurring for 
# each different distribution type
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel))
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel, fill=deposit_type))
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel, fill=distribution_channel))
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))
# create separate charts for each deposit type and market segment to help them 
# understand the differences more clearly.