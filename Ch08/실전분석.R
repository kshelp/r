# (1)
library(reshape2)
str(tips)

# (2)
par(mfrow = c(2,2))
barplot(table(tips$sex), main = 'gender')
barplot(table(tips$day), main = 'Day of the week')
barplot(table(tips$time), main = 'time')
barplot(table(tips$size), main = 'size')
par(mfrow = c(1,1))

# (3)
color.6 <- rep('#a8dadc', 6)
color.6[2] <- '#1d3557'

color.4 <- rep('#a8dadc', 4)
color.4[2] <- '#1d3557'
color.4[3] <- '#457b9d'

par(mfrow = c(2,2))
barplot(table(tips$sex), main = 'gender', col = c('#a8dadc', '#1d3557'))
barplot(table(tips$day), main = 'Day of the week', col = color.4)
barplot(table(tips$time), main = 'time', col = c('#1d3557', '#a8dadc'))
barplot(table(tips$size), main = 'size', col = color.6)
par(mfrow = c(1,1))

# (4)
tips.new <- tips
tips.new$perHead <- tips.new$total_bill / tips.new$size

# (5)
par(mfrow = c(1,3))
hist(tips.new$perHead, main = '1인당 주문 금액', breaks = 5, xlab = '단위:달러')
hist(tips.new[tips.new$time == 'Lunch', 'perHead'], 
     main = '1인당 주문 금액(런치)', breaks = 4, xlab = '단위:달러')
hist(tips.new[tips.new$time == 'Dinner', 'perHead'], 
     main = '1인당 주문 금액(디너)', breaks = 4, xlab = '단위:달러')
par(mfrow = c(1,1))

# (6)
color.5 <- rep('#a8dadc', 6)
color.5[2] <- '#1d3557'

par(mfrow = c(1,3))
hist(tips.new$perHead, 
     main = '1인당 주문 금액', xlab = '단위:달러', 
     breaks = 5, col = color.5)
hist(tips.new[tips.new$time == 'Lunch', 'perHead'], 
     main = '1인당 주문 금액(런치)', xlab = '단위:달러', 
     breaks = 4, col = color.5)
hist(tips.new[tips.new$time == 'Dinner', 'perHead'], 
     main = '1인당 주문 금액(디너)',  xlab = '단위:달러', 
     breaks = 4, col = color.5)
par(mfrow = c(1,1))

# (7)
tips.new$percent <- tips.new$tip / tips.new$total_bill * 100
par(mfrow = c(1,2))
res.lunch <- hist(tips.new[tips.new$time == 'Lunch', 'percent'], 
                  main = '주문 금액 대비 팁의 비율(런치)',
                  xlab = 'percent(%)',
                  breaks = 5)
res.dinner <- hist(tips.new[tips.new$time == 'Dinner', 'percent'], 
                   main = '주문 금액 대비 팁의 비율(디너)',
                   xlab = 'percent(%)',
                   breaks = 10)
par(mfrow = c(1,1))

# (8)
res.lunch
res.dinner
res <- rbind(lunch = c(0, res.lunch$counts), dinner = res.dinner$counts[1:6])
colnames(res) <- res.dinner$breaks[2:7]

# (9)
barplot(res, main = '식사 시간에 따른 팁 비율 분포',
        col = c('#1d3557', '#a8dadc'),
        legend.text = c('Lunch', 'Dinner'))