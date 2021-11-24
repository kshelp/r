# (1)
library(svDialogs)
library(xlsx)

carprice.new <- read.csv('C:/Rworks/carprice.csv', header = T)
str(carprice.new)

# (2)
input.type <- dlgInput('Input type')$res            # 자동차 타입
input.city <- dlgInput('Input MPG.city')$res        # 시내주형 연비
input.city <- as.numeric(input.city)
result <- subset(carprice.new, Type == input.type & 
                   MPG.city >= input.city )

print(result)
sink('search.txt', append=T)
print(result)
sink()

write.xlsx(result, 'search.xlsx', row.names = F)
