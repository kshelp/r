# (1) 자료 확인
ds <- read.csv('C:/Rworks/seoul_temp_2017.csv')
dim(ds)
head(ds)

# (2) 서울의 1년 기온 분포 
summary(ds$avg_temp)
boxplot(ds$avg_temp, 
        col='green', 
        ylim=c(-20,40), 
        xlab='서울 1년 기온',
        ylab='기온')

# (3) 월별 기온 분포 
# 월별 평균기온 계산 
month.avg <- aggregate(ds$avg_temp, 
                       by=list(ds$month),median)[2]
month.avg

# 평균기온 순위 계산 (내림차순) 
odr <- rank(-month.avg)
odr

# 월별 기온 분포 
boxplot(avg_temp~month, data=ds,  
        col=heat.colors(12)[odr],   # 상자의 색을 지정 
        ylim=c(-20,40), 
        ylab='기온',
        xlab='월',
        main='서울시 월별 기온 분포(2017)')