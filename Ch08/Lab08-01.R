ha <- c(54659, 61028, 53307, 46161, 54180)
he <- c(31215, 29863, 32098, 39684, 29707)
mc <- c(15104, 16133, 15222, 13208, 9986)
vs <- c(13470, 14231, 13401, 13552, 13193)
bs <- c(16513, 14947, 15112, 14392, 17091)

ds <- rbind(ha, he, mc, vs, bs)
colnames(ds) <- c('19.1Q', '19.2Q', '19.3Q', '19.4Q', '20.1Q')

barplot(ds, main = '사업부문별 매출액')

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'))

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'),
        horiz = T, las = 1)

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'),
        horiz = T, las = 1,
        xlab = '억 원', beside = T)

par(mfrow = c(1,1), mar = c(5, 5, 5, 10))

barplot(ds, main = '사업부문별 매출액',
        col = c('#003f5c', '#58508d', '#bc5090', '#ff6361', '#ffa600'),
        horiz = T, las = 1,
        xlab = '억 원', beside = T,
        legend.text  = c('H&A','HE','MC','VS','BS'),
        args.legend = list(x='topright', bty='n', inset=c(-0.25,0)))

par(mfrow = c(1,1), mar = c(5,4,4,2)+.1)