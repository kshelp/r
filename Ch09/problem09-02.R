c1 <- subset(ChickWeight, Chick==1)
c21 <- subset(ChickWeight, Chick==21)

plot(c1$Time,                              # x data
     c1$weight,                            # y data
     main='병아리체중변화',
     type='b',                             # 그래프의 종류 선택(알파벳). 
     lty=1,                                # 선의 종류(line type) 선택
     col='red',                            # 선의 색깔 선택          
     xlab='Time',                          # x축 레이블
     ylab='Weight',                        # y축 레이블
     ylim=c(40,400)                        # y값 범위         
)
lines(c21$Time,                            # x data
      c21$weight,                          # y data
      type='b',                            # 선의 종류(line type) 선택
      col='blue')                          # 선의 색깔 선택