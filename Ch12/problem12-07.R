library(ggplot2)

ggplot(data=cars, aes(x=speed, y=dist)) + 
  geom_point()