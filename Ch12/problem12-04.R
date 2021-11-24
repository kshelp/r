library(fmsb) 

score <- c(0.6, 0.8, 0.9, 0.7, 0.5)
max.score <- rep(1,5)            # 1을 5회 반복
min.score <- rep(0,5)            # 0을 5회 반복
ds <- rbind(max.score,min.score, score)
ds <- data.frame(ds)             # 매트릭스를 데이터프레임으로 변환  
colnames(ds) <- c('A','B','C','D','E')

radarchart(ds) # 방사형 차트