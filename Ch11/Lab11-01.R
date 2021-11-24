install.packages("carData")

# (1)
library(carData)
str(UN)         # 요약 정보 확인

# (2)
col_na <- function(y) {
  return(sum(is.na(y)))
}

apply(UN, 2, FUN=col_na)

# (3)
mean(UN$lifeExpF, na.rm=T)   # NA 제외하고 계산

# (4)
tmp <- UN[,c('pctUrban','infantMortality')]
tmp <- tmp[complete.cases(tmp),]    # NA 제거
colMeans(tmp)

# (5)
tmp <- subset(UN, region=='Asia')   # 아시아 국가 추출
mean(tmp$fertility, na.rm=T)