df <- subset(airquality, Month==5)

ggplot(data=df, aes(x=Day,y=Temp)) +   
  geom_line(col='red') 