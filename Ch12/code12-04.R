# (1) 자료 확인
head(airquality)
ds <- airquality[complete.cases(airquality),]   # 결측값 제거
unique(ds$Month)                                # 월 확인

# (2) 월별 오존농도 분포 
# 월별 평균 오존농도 계산
month.avg <- aggregate(ds$Ozone, 
                       by=list(ds$Month),median)[2]
month.avg

# 평균기온 순위 계산(내림차순) 
odr <- rank(-month.avg)
odr

# 월별 오존농도 분포 
boxplot(Ozone~Month, data=ds,  
        col=heat.colors(5)[odr],   # 상자의 색 지정 
        ylim=c(0,170), 
        ylab='오존농도',
        xlab='월',
        main='여름철 오존농도')