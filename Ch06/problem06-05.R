setwd('C:/Rworks/test')
my.mtcars <- subset(mtcars, gear == 4)
write.csv(my.mtcars, 'test.csv', row.names = F)
new.mtcars <- read.csv('test.csv')