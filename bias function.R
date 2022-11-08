install.packages("SimDesign")
library(SimDesign)
#example 1: weather company 
actual_temp <- c(30,25,27.8,32)
prediction_temp <- c(29,24,27,32)
bias(actual_temp,prediction_temp)
#this is close to zero but as we can see the
# the prediction temperature is close the lower temperture
# the data is not as accurate as they should be
# from this, the weather company can find the problem causing bias data 

#example 2: game store want to know if they are
#ordering new stocks according to their actual need
actual_sales <- c(200,345,290,100)
predicted_sales <- c(230,400,300,125)
bias(actual_sales,predicted_sales)
#result is negative 30 which is very far from 0, which means
# the store maybe ordering too much stock