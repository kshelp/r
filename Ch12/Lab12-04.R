# (1)
library(ggplot2)

df <- aggregate(airquality[,'Temp'], by=list(month=airquality$Month), FUN=mean)
ggplot(df, aes(x=month,y=x)) +        # 그래프를 그릴 데이터 지정
  geom_bar(stat='identity',           # 막대그래프의 형태 지정  
           width=0.7, fill='green')   # 막대의 색 지정

# (2)
df <- airquality[complete.cases(airquality),]       # 결측값 제거

ggplot(data=df, aes(x=factor(Month), y=Ozone, fill=factor(Month))) + 
  geom_boxplot() 

# (3)
ggplot(data=df, aes(x=Temp, y=Ozone, color='orange')) + 
  geom_point(size=3) 

# (4)
df.7 <- subset(df, Month==7)
ggplot(data=df.7, aes(x=Day,y=Ozone)) +   
  geom_line(col='red') 
# 또는
ggplot(data=df[df$Month==7,], aes(x=Day,y=Ozone)) +   
  geom_line(col='red') 