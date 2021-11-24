library(ggplot2)
class <- c(1,2,3,4,5)
score <- c(65,75,63,50,60)
df <- data.frame(class,score)         # 그래프를 작성할 대상 데이터

ggplot(df, aes(x=class,y=score)) +    # 그래프를 그릴 데이터 지정
  geom_bar(stat='identity',           # 막대그래프의 형태 지정  
           width=0.7, fill='green')   # 막대의 색 지정                 