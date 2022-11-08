install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)

#step 2: import dataset
hotel_bookings <- read.csv("Coursera_google/hotel_bookings.csv")
View(hotel_bookings)

#arrange data
colnames(hotel_bookings)
arrange(hotel_bookings,lead_time)
#the above code dispaly too many zeros in the output, therefore:
arrange(hotel_bookings,desc(lead_time))

#save the arranged data into new dataframe
hotel_bookings_v2 <- arrange(hotel_bookings,desc(lead_time))
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
mean(hotel_bookings$lead_time)

#create new data frame that contain only one column (one variable) from the dataset
hotel_bookings_city <- filter(hotel_bookings,hotel_bookings$hotel=="City Hotel")

#group and summarize
hotel_summary <- 
  hotel_bookings %>% 
  group_by(hotel) %>% 
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))
head(hotel_summary)