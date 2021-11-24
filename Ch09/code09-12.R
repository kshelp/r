# 코드 9-11에 이어 실행
plot(iris.2, 
     main='Iris plot',
     pch=c(group),
     col=color[group]) 

legend(x='bottomright',               # 범례의 위치  
       legend=levels(iris$Species),   # 범례의 내용
       col=c('red','green','blue'),   # 색 지정
       pch=c(1:3))                    # 점의 모양 