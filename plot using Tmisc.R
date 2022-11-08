install.packages('Tmisc')
library(Tmisc)
library(tidyverse)
data(quartet)
View(quartet)

#group data by set and cal mean, sd, correlation
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y),sd(y), cor(x,y))

#plot to see the different between these datasets which can only be seen by graph
ggplot(quartet,aes(x,y))+ geom_point()+ geom_smooth(method = lm, se=FALSE ) + facet_wrap('set')

#datasauRus package
install.packages("datasauRus")
library(datasauRus)
ggplot(datasaurus_dozen,aes(x=x,y=y,colour = dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap('dataset', ncol = 3)