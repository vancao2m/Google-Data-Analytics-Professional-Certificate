#to covert data into date and times type, first we load both tidyverse and lubridate
library(tidyverse)
library(lubridate)

#current date: today()
today()
#current date-time: now()
now()

#the following codes contents strings in "..." gives us date in yyyy-mm-dd
ydm("2022-09-08")
mdy("September 9th,2022")
ymd(20220908)

#code for date-time 
ymd_hms("2022-09-08 05:00:01")
mdy_hm("September 9th,2022 05:01")

#convert date_time to date
as_date(now())

