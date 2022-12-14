library(tidyverse)
library(palmerpenguins)

#arrange data follow accending order of one column 
penguins %>% arrange(bill_length_mm)

#arrange data follow descending order of one column 
penguins %>%  arrange(-bill_length_mm)
#to save the arranged data table we assignment name to the dataset
penguin2 <- penguins %>%  arrange(-bill_length_mm) 

# s??? d???ng group by d??? nh?m theo m???c gi???ng nhu khi s??? d???ng pivot table trong excel 
# v? d???: trong data penguins c? 3 islands ch?nh v? mu???n nh?m d??? t?m t???ng theo d???o
group_by(islands)
#k???t h???p group ny d??? t?nh gi? tr??? mean c???a bill_length
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% #to lose NA values
  summarize(mean_bill_length_mm = mean(bill_length_mm))
#to find isalnd with the max value of bill_length 
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))
#from this we can see that penguins in island Biscoe has the longest bill_length

#multi task using both group_by and summarize 
penguins %>% 
  group_by(species,island) %>% 
  drop_na() %>% 
  summarize(max_bl=max(bill_length_mm),mean_bl=mean(bill_length_mm))

#filter in R #l???c ra  %>% %>% %>% 