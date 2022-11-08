#brought out dataset
data("ToothGrowth")
View(ToothGrowth)

#arrange data using dplyr packages 
library(dplyr)

#filter
filltered_d <- filter(ToothGrowth, dose == 0.5)
View(filltered_d)
#arrange data
arrange(filltered_d,len)

#nesting filter and arrange #nesting is combining functions together
arrange(filter(ToothGrowth,dose==0.5),len)

#pipes
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)
View(filtered_toothgrowth)

#pipe for grouping and calculate mean 
mean_toothgrowth <- ToothGrowth %>% 
  filter(dose ==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm=T),.group="drop")
mean_toothgrowth
