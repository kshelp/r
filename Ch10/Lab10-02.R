# (1)
library(DAAG)
str(carprice)
carprice$Price   # 자동차 가격

# (2)
range(carprice$Price)  # 값의 범위
mean(carprice$Price)   # 값의 평균

# (3)
hist(carprice$Price, main='자동차 가격',
     xlab='가격대',
     ylab='빈도',
     col='green')

# (4)
tbl <- table(carprice$Type)   

barplot(tbl, main='자동차 타입별 빈도수',       
        xlab='타입',
        ylab='빈도수',
        col=rainbow(length(tbl)))  

# (5)
idx <- which(carprice$Price==max(carprice$Price))
carprice[idx, c('Type','Price')]