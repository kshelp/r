# 13장 연습문제
# Q01
# (1)
install.packages("HSAUR")
library(HSAUR)
data("Forbes2000")
ds <- Forbes2000 
ds[!complete.cases(ds),]          # 결측값 확인

heigh.company <- head(ds,10) # 상위 10개 기업
low.company <- tail(ds,10) # 하위 10개 기업
mean(heigh.company$sales) - mean(low.company$sales) # 차이 : 127.576

# (2)
temp <- ds[order(ds$profits, decreasing=T),] # 순이익 기준으로 정렬
temp <- temp[1:10,] # 상위 10개 기업
temp[,c("rank","name", "sales","profits")]

# (3)
temp <- ds[order(ds$assets, decreasing=T),] # 자산 기준으로 정렬
temp <- temp[1:10,] # 상위 10개 기업
barplot(temp$assets, main='자산 상위 10위 기업', names.arg=temp$name, las=2)

# (4)
n.20 <- nrow(ds)*.2 # 20% 에 해당하는 기업 수
high.20 <- head(ds, n.20) # 상위 20% 기업
low.20 <- tail(ds, n.20) # 하위 20% 기업
high.20$group <- 'high' # 그룹 정보 추가
low.20$group <- 'low' # 그룹 정보 추가
mrg <- rbind(high.20[,c("sales","group")], low.20[,c("sales","group")])
boxplot(sales~group, data=mrg, ylim=c(0,80))

# (5)
canada <- subset(ds, country=='Canada')
korea <- subset(ds, country=='South Korea')
mrg <- rbind(canada, korea)
mrg$country <-factor(mrg$country)
boxplot(marketvalue~country, data= mrg, ylim=c(0,40))

# (6)
ins <- subset(ds, category=='Insurance')
ins.5 <- head(ins, 5)
par(mfrow=c(1,2))
barplot(ins.5$sales,main='매출액', names.arg=ins.5$name, las=2)
barplot(ins.5$profits,main='순익', names.arg=ins.5$name, las=2)
par(mfrow=c(1,1))

# (7)
retail <- subset(ds, category=='Retailing')
n.20 <- round(nrow(retail)*.2)
retail.high <- head(retail, n.20)
retail.low <- tail(retail, n.20)
retail.high$group <- 'high'
retail.low$group <- 'low'
mer <- rbind(retail.high, retail.low)
boxplot(mer$marketvalue~mer$group, main='소매업 그룹별 기업가치', ylim=c(0,60))


# Q02
# (1)
setwd("D:/dev/workspace/r/Ch13")
files <- c('ds.2015.csv', 'ds.2016.csv','ds.2017.csv',
           'ds.2018.csv','ds.2019.csv')

ds <- NULL
for (f in files) {
  tmp <- read.csv(f, header=T)
  ds <- rbind(ds, tmp) 
  print(f)
}
ds <- ds[,-8]                              # PM25 열 제거
ds <- ds[complete.cases(ds),]              # 결측값 포함 행 제거
head(ds)

mdate <- as.character(ds$mdate)
head(mdate)
ds$year  <- as.numeric(substr(mdate, 1,4))  # 연도

library(ggplot2)
tmp.year <- aggregate(ds[,'O3'], by=list(year=ds$year), FUN='mean')
ggplot(data=tmp.year, aes(x=year,y=x))+
  geom_line(col='red')+
  geom_point(size=6, shape=19, alpha=0.5)+
  ggtitle('연도별 오존 농도 변화')+
  ylab('농도')

# (2)
ds.so2 <- ds[,c('SO2', 'month')]
ds.o3 <- ds[,c('O3', 'month')]
names(ds.so2)[1] <- 'value'
names(ds.o3)[1] <- 'value'
ds.so2$group <- 'SO2'
ds.o3$group <- 'O3'
ds.tmp <- rbind(ds.so2, ds.o3)
tmp.month <- aggregate(ds.tmp[,'value'], by=list(month=ds.tmp$month, group=ds.tmp$group),
                       FUN='mean')
#head(tmp.month)
ggplot(tmp.month, aes(x=month,y=x, colour=group, group=group))+
  geom_line()+
  geom_point(size=3, shape=19, alpha=0.5)+
  ggtitle('월별 SO2, O3 농도 변화')+
  ylab('농도')

# (3)
ds$season <- NA # season 열 추가
ds$season[ds$month %in% c(12,1,2)] <- 'winter'
ds$season[ds$month %in% c(3,4,5)] <- 'spring'
ds$season[ds$month %in% c(6,7,8)] <- 'summer'
ds$season[ds$month %in% c(9,10,11)] <- 'fall'
head(ds)

# (4)
ds$locname <- NA                            # locname 열을 추가
ds$locname[ds$loc==111123] <- '서울'        # 도시
ds$locname[ds$loc==336111] <- '목포'        # 도시  
ds$locname[ds$loc==632132] <- '강릉'        # 도시

head(ds)
tmp.season <- aggregate(ds[,'PM10'], by=list(season=ds$season, loc=ds$locname), FUN='mean')
# 계절의 순서를 변경
season.levels <- c('spring','summer','fall','winter')
tmp.season$season <- factor(tmp.season$season, levels=season.levels)
ggplot(tmp.season, aes(x=season, y=x, colour=loc, group=loc))+
  geom_line()+
  geom_point(size=3, shape=19, alpha=0.5)+
  ggtitle('계절별 PM10 농도 변화')+
  ylab('농도')

# (5)
ggplot(ds, aes(x=factor(month),y=PM10, fill=factor(month)))+
  geom_boxplot(show.legend = FALSE)+
  coord_cartesian(ylim=c(0,100))+
  ggtitle('월별 PM10 농도')+
  xlab('month')+
  ylab('농도')

# (6)
ds.2019 <- subset(ds, year==2019)
tmp.month <- aggregate(ds.2019[,'NO2'], by=list(month=ds.2019$month), FUN='mean')
ggplot(tmp.month, aes(x=factor(month),y=x ))+
  geom_bar(stat='identity', width=0.7, fill='steelblue')+
  ggtitle('월별 NO2 농도')+
  xlab('month')+
  ylab('농도')

# (7)
ds.2019 <- subset(ds, year==2019)
ds.2019$md <- as.numeric(substr(ds.2019$mdate, 5,8)) # 월일
tmp.md <- aggregate(ds.2019[,'PM10'], by=list(mmdd=ds.2019$md,
                                              loc=ds.2019$locname), FUN='mean')
tmp.md.mean <- mean(tmp.md$x) # 일평균 농도
# 일평균 농도보다 높은 날 추출
tmp.md.high <- subset(tmp.md, tmp.md$x>tmp.md.mean)
stat.loc <- aggregate(tmp.md.high[,'x'], by=list(loc=tmp.md.high$loc),
                      FUN='length')
print(stat.loc)
# > print(stat.loc)
# loc x
# 1 강릉 99
# 2 목포 143
# 3 서울 136

# (8)
ds.tmp <- ds
ds.tmp$ymd <- as.numeric(substr(ds.tmp$mdate, 1,8)) # 연월일
tmp.ymd <- aggregate(ds.tmp[,'PM10'], by=list(ymd=ds.tmp$ymd,
                                              loc=ds.tmp$locname), FUN='mean')
max.idx <- which(tmp.ymd$x==max(tmp.ymd$x))
tmp.ymd[max.idx, ]
# > tmp.ymd[max.idx, ]
# ymd loc x
# 3473 20150223 서울 708.75