setwd('C:/Rworks')                               # 작업 폴더 지정
my.iris <- subset(iris, Species=='Setosa')       # Setosa 품종 데이터만 추출
write.csv(my.iris, 'my_iris.csv', row.names=F)   # .csv 파일에 저장하기