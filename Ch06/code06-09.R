library(xlsx)                                               # 패키지 불러오기
my.iris <- subset(iris, Species=='Setosa')       # Setosa 품종 데이터만 추출
write.xlsx(my.iris, 'C:/Rworks/my_iris.xlsx', row.names=F)  # 파일에 저장하기