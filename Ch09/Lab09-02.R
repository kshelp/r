# 1
boxplot(mtcars$mpg)

# 2
boxplot(mtcars$mpg~mtcars$gear)

# 3
boxplot(mtcars$mpg~mtcars$vs)

# 4
boxplot(mtcars$mpg~mtcars$am)

# 5
grp <- rep('high', nrow(mtcars))
grp[mtcars$wt < mean(mtcars$wt)] <- 'low'
boxplot(mtcars$hp~grp)