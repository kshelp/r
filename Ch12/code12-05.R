install.packages('fmsb')
library(fmsb) 

# (1) 자료 준비 
score <- c(80,60,95,85,40)
max.score <- rep(100,5)          # 100을 5회 반복
min.score <- rep(0,5)            # 0을 5회 반복
ds <- rbind(max.score,min.score, score)
ds <- data.frame(ds)             # 매트릭스를 데이터프레임으로 변환  
colnames(ds) <- c('국어','영어','수학','물리','음악')
ds

# (2) 방사형 차트 
radarchart(ds)