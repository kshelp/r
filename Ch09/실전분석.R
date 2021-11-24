# 1
library(DAAG)
str(socsupport)    # 자료의 구조 확인
help(socsupport)   # 변수별 의미 확인

# 2
library(plotrix)
ds <- table(socsupport$age)
pie3D(ds, main='연령 분포',
      labels=names(ds),                              # 파이별 레이블 지정
      labelcex=1.0,                                  # 레이블의 폰트 크기
      explode=0.1,                                   # 파이 간 간격
      radius=1.5,                                    # 파이의 크기 
      col=rainbow(length(ds)))                       # 파이의 색 지정

# 3
boxplot(socsupport$emotional~socsupport$country,
        main='정서적 지원 제도 비교')

# 4
boxplot(socsupport$emotionalsat~socsupport$gender,
        main='정서적 지원제도 만족도 비교')

# 5
boxplot(socsupport$emotionalsat~socsupport$age,
        main='정서적 지원제도 만족도 비교',
        col=rainbow(5))

# 6
group <- as.numeric(socsupport$gender)          
color <- c('blue','red')                            # 여-blue, 남-red
plot(socsupport[,c('emotionalsat','tangiblesat','age')],
     pch=group,
     col=color[group])