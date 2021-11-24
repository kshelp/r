library(ggplot2)

ggplot(data=iris, aes(x=Species, y=Petal.Length, fill=Species)) + 
  geom_boxplot()  