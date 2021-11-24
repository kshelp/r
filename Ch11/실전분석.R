# (1)
library(carData)
help(Chile)       # 데이터셋에 대한 도움말 확인
str(Chile)

# (2)
sum(is.na(Chile))                    # 결측값 개수 확인, 295개의 결측값 존재
ch <- Chile[complete.cases(Chile),]  # 결측값 제거

# (3)
idx <- sample(nrow(ch), nrow(ch)*.6)   # 60% 샘플링
ch60 <- ch[idx, ]
dim(ch60)

# (4)
agg <- aggregate(ch60[,'population'], by=list(지역=ch60$region), sum)
agg[order(agg$x, decreasing = T),]

# (5)
table(ch60$vote)

# (6)
no.people <- table(ch60$sex)               # 여성, 남성 응답자수     
tmp    <- subset(ch60, vote=='Y')          # 찬성만 추출 
agg <- aggregate(tmp[,'vote'], by=list(성별=tmp$sex), length)
yes.ratio <- agg$x / no.people             # 찬성 비율 계산
yes.ratio

# (7)
no.region <- table(ch60$region)            # 지역별 응답자수     
tmp    <- subset(ch60, vote=='Y')          # 찬성만 추출 
agg <- aggregate(tmp[,'vote'], by=list(지역=tmp$region), length)
yes.ratio <- agg$x / no.region             # 찬성 비율 계산
yes.ratio
