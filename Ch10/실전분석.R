# (1)
install.packages('Ecdat')
library(Ecdat)
str(Hdma)

# (2)
tbl <- table(Hdma$deny)
tbl <- tbl / sum(tbl)
tbl
names(tbl) <- c('승인','거절')
barplot(tbl, main='주택담보대출 승인/거절',
        col=c('green','yellow'),
        ylim=c(0,1),
        ylab='비율')

# (3)
hist(Hdma$lvr, main='주택가격대비 대출금 비율',
     col=rainbow(10))

# (4)
black.yn <- table(Hdma$black)
# 흑인 신청자중 거절 비율
black.deney <- sum(Hdma$black=='yes' & Hdma$deny=='yes') / black.yn['yes'] 
# 비흑인 신청자중 거절 비율
non.black.deney <- sum(Hdma$black=='no' & Hdma$deny=='yes') / black.yn['no']
cat('흑인, 비흑인 거절율 : ', black.deney, non.black.deney, '\n')

# (5)
black.credit <- mean(Hdma$ccs[Hdma$black=='yes'])
non.black.credit <- mean(Hdma$ccs[Hdma$black=='no'])
cat('흑인, 비흑인 신용등급 : ', black.credit, non.black.credit, '\n')

# (6)
df <- Hdma[,c('dir','hir','ccs','mcs')]
point.col <- c('green','red')         # green : 대출 승인, red : 대출 거절
plot(df, col= point.col[Hdma$deny])

# (7)
cor(df)
