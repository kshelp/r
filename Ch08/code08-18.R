par(mfrow = c(2,2), mar = c(6,6,3,3))

barplot(table(chickwts$feed), main = 'distribution by Feed Type',
        horiz = T, las = 1, col = 'green')

hist(Orange$age, main = 'the age of orange',
     breaks = 4, xlab = 'day', col = 'yellow', border = 'blue')

barplot(table(chickwts$feed), main = 'distribution by Feed Type',
        las = 2, col = 'green')

hist(Orange$age, main = 'the age of orange',
     breaks = 6, xlab = 'day', col = 'yellow', border = 'blue')

par(mfrow = c(1,1), mar = c(5,4,4,2)+.1)