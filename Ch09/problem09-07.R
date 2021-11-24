install.packages("DAAG")
library(DAAG)

group <- as.numeric(factor(codling$Cultivar))   # 제조사명을 숫자로 표현
color <- rainbow(7)                             # 점의 컬러
plot(codling[,c('dose','pobs','ct')],
     pch=group, 
     col=color[group])