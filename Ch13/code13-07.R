tmp <- ds[,5:8]
tmp <- tmp[complete.cases(tmp),]  # 결측값 제거
plot(tmp, lower.panel=NULL)       # 산점도
cor(tmp)                          # 상관계수