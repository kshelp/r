setwd('C:/Rworks/test')
my.mtcars <- subset(mtcars, mpg > 20)
write.table(my.mtcars, 'test.txt', sep = '\t')
new.mtcars <- read.table('test.txt', header = T, sep = '\t')