m1 <- c(62, 68, 60, 65, 71) # 수박 판매량
m2 <- c(41, 32, 44, 48, 45) # 포도 판매량
m3 <- c(28, 30, 36, 24, 21) # 참외 판매량

ds <- rbind(m1, m2, m2)
colnames(ds) <- c('월', '화', '수', '목', '금')

par(mfrow = c(1,1), mar = c(5, 5, 5, 7))

barplot(ds, main = '최근 5일간 과일 판매량',
        col = c('green', 'purple', 'yellow'),
        beside = TRUE,
        legend.text = c('수박', '포도', '참외'),
        args.legend = list(x='topright', bty = 'o', inset = c(-0.25, 0)))

par(mfrow = c(1,1), mar = c(5, 4, 4, 2)+0.1)