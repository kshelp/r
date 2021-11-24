# 1
library(DAAG)
str(tinting)

# 2
plot(tinting$it,tinting$csoa)

# 3
group <- tinting$tint 
color <- c('red','green','blue')    # 점의 컬러
plot(tinting$it,tinting$csoa, 
     pch=c(group),
     col=color[group]) 

# 4
group <- tinting$agegp
color <- c('red','blue')    # 점의 컬러
plot(tinting$it,tinting$csoa, 
     pch=c(group),
     col=color[group]) 