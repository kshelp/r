plot(carprice$MPG.city,                 
     carprice$Price,                    
     xlab='연비',                       
     ylab='가격',                      
)

cor(carprice$MPG.city, carprice$Price)  # -0.6933728
# 자동차 가격(Price)과 시내 주행 연비(MPG.city)는 음의 상관관계에 있습니다.
# 이는 자동차 가격이 비쌀수록 연비는 떨어지는 상황을 반영한 것으로 보인다.