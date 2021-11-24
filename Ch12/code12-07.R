library(ggplot2)

month <- c(1,2,3,4,5,6)
rain  <- c(55,50,45,50,60,70)
df <- data.frame(month,rain)           # 그래프를 작성할 대상 데이터
df

ggplot(df, aes(x=month,y=rain)) +      # 그래프를 작성할 데이터 지정
  geom_bar(stat='identity',            # 막대그래프의 형태 지정  
           width=0.7,                  # 막대의 폭 지정
           fill='steelblue')           # 막대의 색 지정