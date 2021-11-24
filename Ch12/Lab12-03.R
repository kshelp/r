# (1)
library(carData)
head(WVS)

# (2)
pop <- table(WVS$country)            # 국가별 응답자수
tmp <- subset(WVS, religion=='yes')  
rel <- table(tmp$country)            # 국가별 종교가 있는 응답자수
stat <- rel/pop                      # 국가별 종교가 있는 응답자수 비율
stat

# (3)
max.score <- rep(1,4)            # 최댓값
min.score <- rep(0,4)            # 최솟값
ds <- rbind(max.score,min.score, stat)
ds <- data.frame(ds)             # 매트릭스를 데이터프레임으로 변환  

# (4)
radarchart(ds,                           # 데이터프레임
           pcol='dark green',            # 다각형 선의 색 
           pfcol=rgb(0.2,0.5,0.5,0.5),   # 다각형 내부색
           plwd=3,                       # 다각형 선의 두께
           cglcol='grey',                # 거미줄의 색
           cglty=1,                      # 거미줄의 타입
           axistype=1,                   # 축의 레이블 표시
           axislabcol='grey',            # 축의 레이블 색
           caxislabels=seq(0,1,0.25),    # 축의 레이블 값
           title='국가별 종교인 비율'    # 그래프 제목
)