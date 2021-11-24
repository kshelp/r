class(trees)
str(trees)

grith.mean <- mean(trees$Girth)

candidate <- subset(trees, Girth >= grith.mean & Height > 80 & Volume > 50)
candidate
nrow(candidate)