tbl <- table(TitanicSurvival$sex)   
barplot(tbl, main='성별 탑승객수',       
        xlab='성별',
        ylab='탐승객수',
        col=c('green', 'blue'))  