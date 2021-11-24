agg <- aggregate(iris[,'Sepal.Length'], by=list(품종=iris$Species), FUN=max)
agg