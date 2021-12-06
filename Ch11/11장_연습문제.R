# 11장 연습문제
# Q01
library(carData)
for (col in colnames(Chile)) {
  this.na <- is.na(Chile[,col])
  cat(col, '\t', sum(this.na), '\n')
}


# Q02
library(carData)
no.whole <- nrow(Chile) # 전체 행의 수
tmp <- sum(complete.cases(Chile)) # 결측값이 없는 행의 수
no.na <- (no.whole-tmp)/no.whole # 결측값이 있는 행의 비율
no.na # 0.09962963


# Q03
tmp <- airquality
tmp[is.na(tmp$Ozone),'Ozone'] <- 0
tmp[is.na(tmp$Solar.R),'Solar.R'] <- 0
# 또는
tmp$Ozone[is.na(tmp$Ozone)] <- 0
tmp$Solar.R[is.na(tmp$Solar.R)] <- 0


# Q04
sort(airquality$Solar.R, decreasing = T)


# Q05
airquality[order(airquality$Solar.R, decreasing = T),c('Month','Day','Solar.R')]


# Q06
tmp <- airquality[order(airquality$Solar.R),c('Month','Day')]
tmp[1:10,]


# Q07
library(carData)
set.seed(1234)
idx <- sample(nrow(CES11),200)
tmp <- CES11[idx,'urban']
table(tmp)


# Q08
library(carData)
set.seed(1234)
idx <- sample(nrow(CES11),nrow(CES11)*.2)
tmp <- CES11[idx,'education']
table(tmp)


# Q09
# (1)
food <- 5
ncol(combn(food,3))

# (2)
# 방법 1
food <- c('김밥', '라면', '쫄면', '칼국수', '아메리카노')
tmp <-combn(food,3)
condi <- tmp[1,] == '라면' | tmp[2,] == '라면' | tmp[3,] == '라면'
tmp[,condi]

# 방법 2
food <- c('김밥','쫄면', '칼국수', '아메리카노')
tmp <-combn(food,2)
tmp2 <- rbind(rep('라면',ncol(tmp)), tmp)
tmp2


# Q10
# (1)
library(carData)
df <- Leinhardt[complete.cases(Leinhardt),]
agg <- aggregate(df[,'infant'], by=list(대륙=df$region), mean)
agg

# (2)
ibrary(carData)
df <- Leinhardt[complete.cases(Leinhardt),]
agg <- aggregate(df[,'infant'], by=list(산유국=df$oil), mean)
agg

# (3)
library(carData)
avg.income <- mean(df$income) # 평균소득 계산
df$group <- NA
df$group[df$income>=avg.income] <- 'HIGH'
df$group[df$income<avg.income] <- 'LOW'
agg <- aggregate(df[,'infant'], by=list(그룹=df$group), mean)
agg


# Q11
# (1)
library(carData)
agg <- aggregate(Ericksen[,'minority'], by=list(지역=Ericksen$city), mean)
agg

# (2)
library(carData)
df <- Ericksen
df$group <- NA
df$group[df$minority>=25] <- 'HIGH'
df$group[df$minority<25] <- 'LOW'
agg <- aggregate(df[,c('crime','poverty')], by=list(그룹=df$group), mean)
agg

# (3)
df <- Ericksen
df
df$group <- NA
df
df$group[df$highschool< 28] <- 'A'
df$group[df$highschool>= 28 & df$highschool<=40] <- 'B'
df$group[df$highschool> 40] <- 'C'
df
agg <- aggregate(df[,c('housing','crime','poverty')], by=list(그룹=df$group), mean)
agg

# (4)
# 고등학교 미졸업자 비율이 높을수록 소규모주택 거주비율, 빈곤율은 높아지나 범죄율에는 큰 영향을
# 미치지 않는다.