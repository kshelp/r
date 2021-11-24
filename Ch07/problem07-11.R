idx <- which(mtcars$mpg >= mean(mtcars$mpg))
mtcars[idx, ]
rownames(mtcars)[idx]