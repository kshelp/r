# (1)
library(carData)
ds <- SLID[complete.cases(SLID),]
head(ds)

# (2)
boxplot(wages~sex, data=ds, 
        main='성별 임금',
        col=c('green','steelblue'))

# (3)
boxplot(wages~language, data=ds, 
        main='사용언어별 임금',
        col=c('green','steelblue','yellow'))

# (4)
ds$edu_group <- NA         # 새 열 추가
ds$edu_group[ds$education<10] <- 'A'
ds$edu_group[ds$education>=10 & ds$education<13] <- 'B'
ds$edu_group[ds$education>=13 & ds$education<15] <- 'C'
ds$edu_group[ds$education>=15 & ds$education<18] <- 'D'
ds$edu_group[ds$education>=18] <- 'E'

boxplot(wages~edu_group, data=ds, 
        main='교육기간별 임금',
        col=rainbow(5))    # 상자의 색을 rainbow 팔레트에서 선택 