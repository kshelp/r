install.packages("Stat2Data")

library(Stat2Data)
data(Diamonds)
ds <- Diamonds$PricePerCt  # 캐럿당 가격

hist(ds, main = '캐럿당 가격 분포',
     breaks = 9)

hist(ds, main = '캐럿당 가격 분포',
     breaks = 9,
     xlab = '캐럿당 가격($)', ylab = '빈도수', las = 1)

color <- rep('#a8dadc', 9)
color[3] <- '#1d3557'

hist(ds, main = '1캐럿당 가격 분포',
     breaks = 9,
     xlab = '캐럿당 가격($)', ylab = '빈도수', las = 1,
     col = color,
     border = '#457b9d')