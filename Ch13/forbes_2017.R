# 2017년 자료
forbes <- read.csv('./ch13/Forbes Top2000 2017.csv', header = T)
head(forbes)
ds2 <- forbes[!complete.cases(forbes),]
head(ds2)
tmp2 <- ds2[order(ds2$Market.Value, decreasing=T),]
tmp2[1:10,c('Company', 'Country','Sector','Market.Value')]

head(korea2)
korea2 <- subset(ds2, Country=='South Korea')
korea2[,c('Rank','Company','Sector','Market.Value')]
