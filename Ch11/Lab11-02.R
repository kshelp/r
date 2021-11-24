# (1)
library(carData)
str(Highway1)

# (2)
Highway1[order(Highway1$rate, decreasing = T),]

# (3)
tmp <- Highway1[order(Highway1$len, decreasing = T),'len']
tmp             # 구간별 길이를 내림차순으로 정렬한 결과
sum(tmp[1:10])  # 상위 10개 구간의 총 길이

# (4)
tmp <- Highway1[order(Highway1$adt),c('adt','rate')]
tmp             
tmp[1:10,]

# (5)
tmp <- Highway1[order(Highway1$slim, decreasing = T),c('len','adt','rate')]
tmp             
tmp[1:5,]
