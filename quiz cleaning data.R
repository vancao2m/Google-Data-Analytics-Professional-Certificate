#create a new dataset using containing combined column
example_df <- booking_df %>% 
  select(arrival_date_year, arrival_date_month) %>% #select two column only 
  unite(arrival_month_year, c("arrival_date_month","arrival_date_year"),sep = " ")
View(example_df)

#create a new column in the dataset
example_df_trial <- booking_df %>% 
  unite(arrival_month_year, c("arrival_date_month","arrival_date_year"),sep = " ")

#create a new column that summed up all the adults, children, and babies 
#on a reservation for the total number of people:
example_sum <- booking_df %>%
  mutate(guests=sum("adults","children","babies"))
View(example_sum)

#Make a column called 'number_canceled' to represent the total number of canceled bookings. 
#Then, make a column called 'average_lead_time' to represent the average lead time. 
#Use the `summarize()` function to do this in the code chunk below:
view
