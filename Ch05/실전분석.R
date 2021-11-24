install.packages("reshape2")
library(reshape2)
tips

is.matrix(tips)
class(tips)

head(tips)

str(tips)

table(tips$day)

dinner <- subset(tips, time == 'Dinner')
lunch <- subset(tips, time == 'Lunch')

table(dinner$day)
table(lunch$day)

colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

tip.rate <- tips$tip/tips$total_bill   # 손님별 팁의 비율
mean(tip.rate)                         # 평균 팁의 비율