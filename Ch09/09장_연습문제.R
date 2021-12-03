# 09장 연습문제
# Q01
# (1)
library(carData)
ds <- table(MplsStops$race)
pie(ds)

# (2)
ds <- table(MplsStops$problem)
pie(ds, col=c('red','blue'))

# (3)
tmp <- subset(MplsStops, problem=='suspicious')
ds <- table(tmp$personSearch)
pie(ds)

# (4)
install.packages('plotrix')
library(plotrix)
ds <- table(MplsStops$gender)
pie3D(ds, main='성별비율',
      labels=names(ds),
      labelcex=1.0,
      explode=0.1,
      radius=1.5,
      col=c('green','orange','yellow'))


# Q02
library(DAAG)
data(greatLakes)
ds <- data.frame(year=1918:2009, greatLakes)
# (1)
plot(ds$year, # x data
     ds$Erie, # y data
     main='Erie호 수위', # 제목
     type='l', # 그래프의 종류 (선그래프)
     lty=1, # 선의 종류(line type) 선택
     lwd=1, # 선의 굵기 선택
)

# (2)
plot(ds$year, # x data
     ds$michHuron, # y data
     main='michHuron호 수위', # 제목
     type='b', # 그래프의 종류
     lty=2, # 선의 종류(line type) 선택
     lwd=1, # 선의 굵기 선택
     col='red',
     xlab='연도',
     ylab='수위'
)

# (3)
plot(ds$year, # x data
     ds$Erie, # y data
     main='4개호수 수위', # 제목
     type='b', # 그래프의 종류 (선그래프)
     lty=1, # 선의 종류(line type) 선택
     lwd=1, # 선의 굵기 선택
     col='red', # 선의 색깔 선택
     xlab='연도',
     ylab='수위',
     ylim=c(173,177.5) # y축 값의 범위
)
lines(ds$year, # x data
      ds$michHuron, # y data
      type='b', # 선의 종류(line type) 선택
      col='blue') # 선의 색깔 선택
lines(ds$year, # x data
      ds$StClair, # y data
      type='b', # 선의 종류(line type) 선택
      col='orange') # 선의 색깔 선택


# Q03
# (1)
library(DAAG)
boxplot(cfseal$weight)

# (2)
boxplot.stats(cfseal$heart)$out

# (3)
grp <- rep('old', nrow(cfseal)) # 그룹 정보 벡터 생성
grp[cfseal$age<mean(cfseal$age)] <- 'young' # 나이가 평균 미만이면 young
grp <- factor(grp) # 벡터를 팩터로 변환
boxplot(cfseal$weight~grp,
        col=c('orange','green'))

# (4)
grp <- rep('middle', nrow(cfseal))
Q1 <- summary(cfseal$weight)[2]
Q3 <- summary(cfseal$weight)[5]
grp[cfseal$weight<Q1] <- 'low'
grp[cfseal$weight>Q3] <- 'high'
grp <- factor(grp)
boxplot(cfseal$weight~grp)


# Q04
# (1)
plot(ds$Erie, ds$michHuron)
# 또는
plot(ds[,c('Erie','michHuron')])

# (2)
plot(ds)


# Q05
# (1)
plot(grog$Beer, grog$Wine)
# 또는
plot(grog[,c('Beer','Wine')])

# (2)
grp <- as.numeric(grog$Country)
color <- c('red','blue')
plot(grog[,c('Beer','Wine','Spirit')],
     pch=grp,
     col=color[grp])
