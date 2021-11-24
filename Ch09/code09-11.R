iris.2 <- iris[,3:4]                # 데이터 준비
levels(iris$Species)                # 그룹 확인
group <- as.numeric(iris$Species)   # 점의 모양과 색
group                               # group 내용 출력
color <- c('red','green','blue')    # 점의 컬러
plot(iris.2, 
     main='Iris plot',
     pch=c(group),
     col=color[group]) 