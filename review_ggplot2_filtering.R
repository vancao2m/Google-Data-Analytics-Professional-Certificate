# build on the work you performed previously to apply filters 
# to your data visualizations in `ggplot2`
# load packages and data:
library(ggplot2)
hotel_bookings <- read.csv('hotel_bookings.csv')
# TASK: relationship between booking lead time and guests traveling with children:
ggplot(data=hotel_bookings)+
  geom_point(mapping=aes(x=lead_time,y=children))
# TASK: run a family-friendly promotion targeting key market segments. 
# She wants to know which market segments generate the largest number 
# of bookings, and where these bookings are made
# (city hotels or resort hotels).

#step 1: bar chart showing each hotel type and market segment 
# with different colors to represent each market segment:
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x= hotel, fill=market_segment))
# disadvantage of this bar chart is that it is hard to see the top of each bar 
# facet_wrap() function to create a separate plot for each market segment:
ggplot(data = hotel_bookings)+
  geom_bar(mapping=aes(x= hotel))+
  facet_wrap(~market_segment)

# step 2: filtering
# load needed packages:
library(tidyverse)
# TASK: create a plot that shows the relationship between lead time and guests 
# traveling with children for online bookings at city hotels

# way 1:
onlineta_city_hotels <- filter(hotel_bookings,
                                (hotel=="City Hotel"&
                                  hotel_bookings$market_segment=="Online TA"))

#way 2:
onlineta_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel=="City Hotel") %>% 
  filter(market_segment=="Online TA")
#plot the need graph:
ggplot(data=onlineta_city_hotels)+
  geom_point(mapping=aes(x=lead_time,y=children))
