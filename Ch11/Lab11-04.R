# (1)
library(carData)
data('CES11')        # 데이터셋 불러오기
str(CES11)

# (2)
table(CES11$abortion)              # 반대, 찬성 인원수
table(CES11$abortion)/nrow(CES11)  # 반대, 찬성 비율

# (3)
agg <- aggregate(CES11[,'abortion'], by=list(성별=CES11$gender), FUN=table)
agg.2 <- agg[,2]                       # Yes/No 빈도수 부분만 추출
agg.2[1,] <- agg.2[1,]/sum(agg.2[1,])  # female Yes/No 비율 계산
agg.2[2,] <- agg.2[2,]/sum(agg.2[2,])  # male Yes/No 비율 계산
rownames(agg.2) <- agg[,1]
agg.2

# (4)
agg <- aggregate(CES11[,'abortion'], by=list(지역=CES11$urban), FUN=table)
agg.2 <- agg[,2]                       # Yes/No 빈도수 부분만 추출
agg.2[1,] <- agg.2[1,]/sum(agg.2[1,])  # 도시외 지역 Yes/No 비율 계산
agg.2[2,] <- agg.2[2,]/sum(agg.2[2,])  # 도시지역 Yes/No 비율 계산
rownames(agg.2) <- agg[,1]
agg.2