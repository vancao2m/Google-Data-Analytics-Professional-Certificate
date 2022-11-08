#create atomic vector
c(1,2,3)
#assign variable with a vector
vec_3 <- c(1,2,3)

#know type of vector
typeof(vec_3)
#know length of vector
vec_chu <- c("Vo","Ai","Van")
length(vec_chu)

#both types question and naming vector need an assigned vector to begin with
#to question type of vector, first we assign a vector to a variable then ask is. ..
vec_ques <- c(TRUE,FALSE,FALSE)
is.character(vec_ques)
#to name vector first we assign a vector with a variable 
vec_name <- c(2.4,5.78,9.6)
names(vec_name) <- c(TRUE,TRUE,TRUE)

#create list vector
list(TRUE,1,"HI!")
vec_4 <- list(TRUE,1,"HI!")
#to know structure of the list 
str(vec_4)
#create list in list
vec_list3 <- list(list(list(TRUE,FALSE,TRUE)))
str(vec_list3)
#to name a list, we can do it directly by list(""=)
list("Vo"=1,"Ai"=2,"Van"=3)