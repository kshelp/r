install.packages('carData')
library(carData)
ds <- Chile
colors = rainbow(20)     # 레인보우 팔레트에서 20색 선택

par(mfrow = c(2,3))

barplot(table(ds$region), main = '지역별 분포', col=colors[1:5])
barplot(table(ds$sex), main = '성별 분포', , col=colors[6:7])
barplot(table(ds$education), main = '교육수준별 분포', col=colors[8:10])

hist(ds$age, breaks = 6, main = '연령', xlab = 'age', col=colors[1:6])
hist(ds$income, breaks = 4, main = '수입', xlab = 'income', 
     col=colors[11:14])
hist(ds$statusquo, breaks = 9, main = '정책 지지도', xlab = 'support', 
     col=colors[15:20]) 

par(mfrow = c(1,1))
