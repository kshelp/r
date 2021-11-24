dep.A <- c(66, 72, 74, 80)
dep.B <- c(44, 28, 21, 15)
dep.C <- c(26, 32, 35, 36)

ds <- rbind(dep.A, dep.B, dep.C)
colnames(ds) <- c('1Q', '2Q', '3Q', '4Q')

barplot(ds, main = '분기별 영업이익',
        col = c('red', 'orange', 'yellow'),
        beside = TRUE)
