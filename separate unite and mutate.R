'id <- c(1:10)


name <- c("John Mendes", "Rob Stewart", 
          "Rachel Abrahamson", "Christy Hickman", 
          "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan",
          "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", 
               "Programmer", "Management", 
               "Clerical", "Developer", 
               "Programmer", "Management", 
               "Clerical", "Developer", 
               "Programmer")

employee <- data.frame(id, name, job_title)'
print (employee)

#separate the name column into first name and last name using separate function 
library(tidyr)
separate(employee,name,into = c('first_name','last_name'),sep = ' ')

#unite the columns into one column using unite function 
#in the above code we only separate the column temporary, 
#so to use the above table we must assign the result with a name 'seperated_table'

seperated_table <- separate(employee,name,into = c('first_name','last_name'),sep = ' ')
unite(seperated_table,'name',first_name,last_name,sep = ' ')

#create new variable using mutate function 
library(dplyr)
library(palmerpenguins)
View(penguins)
#adding a column calculate the body mass of the penguins from g to kg
# and flipper length from mm to m
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m=flipper_length_mm/1000)