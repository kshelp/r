head(iris)
order(iris$Sepal.Length)
iris[order(iris$Sepal.Length),]                   # 오름차순으로 정렬
iris[order(iris$Sepal.Length, decreasing=T),]     # 내림차순으로 정렬
iris.new <- iris[order(iris$Sepal.Length),]       # 정렬된 데이터를 저장
head(iris.new)
iris[order(iris$Species, decreasing=T, iris$Petal.Length),]     # 정렬 기준이 2개