agg <- aggregate(iris[,-5], by=list(iris$Species), 
                 FUN=mean)
agg