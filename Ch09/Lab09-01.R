# 1
install.packages("DAAG")
library(DAAG)

ds <- table(science$like)
pie(ds, main='선호 점수별 비율',
    col=rainbow(length(ds)),           # 파이의 색 지정
    radius=1)                          # 파이의 크기 지정


# 2
install.packages("plotrix")
library(plotrix)

ds <- table(science$State)
pie3D(ds, main='주별 학생 비율',
      labels=names(ds),                              # 파이별 레이블 지정
      labelcex=1.0,                                  # 레이블의 폰트 크기
      explode=0.1,                                   # 파이 간 간격
      radius=1.5,                                    # 파이의 크기 
      col=c('brown','green'))                        # 파이의 색 지정

# 3
year = 1875:1972
ds <- data.frame(year, LakeHuron)

plot(ds$year,                                 # x data
     ds$LakeHuron,                            # y data
     main='수위변화',
     type='b',                            
     lty=1,                               
     col='blue',                                     
     xlab='연도',                         
     ylab='수위')