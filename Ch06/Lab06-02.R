setwd('C:/Rworks/Shiny')

library(ggplot2)
str(diamonds)

diamonds.new <- subset(diamonds, cut == 'Premium' & carat >= 2)

write.csv(diamonds.new, 'shiny_diamonds.csv', row.names = F)

diamonds.load <- read.csv('shiny_diamonds.csv', header = T)

diamonds.new <- subset(diamonds.load, color != 'D')

library(xlsx)
write.xlsx(diamonds.new, 'shiny_diamonds.xlsx', row.names = F)