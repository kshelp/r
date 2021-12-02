# 06장 연습문제
# Q01
library(svDialogs)
input.value <- dlgInput('Input a value')$res
print(input.value)


# Q02
# '\n'


# Q03
# (A) 작업 폴더
# (B) getwd()
# (C) setwd()


# Q04
# csv(comma-separated values)


# Q05
library(xlsx)          
ds <- read.xlsx('data.xlsx', header = T, sheetIndex = 1) # 파일 읽기
write.xlsx(ds, 'data_new.xlsx', row.names = F) # 파일 쓰기


# Q06
sink('result.txt', append = T)
cat(height, weight, bmi)
sink()


# Q07
library(svDialogs)
base <- dlgInput('Enter the base of the triangle.')$res
height <- dlgInput('Enter the height of the triangle.')$res
base <- as.numeric(base)
height <- as.numeric(height)
area <- 1/2 * base * height
cat('The area of the triangle is ', area, '. \n')



# Q08
read.table('ds_tab.txt', sep = '\t', header = FALSE)


# Q09
ds <- read.table('ds.txt', sep = ' ', header = FALSE)
write.csv(ds, 'ds.csv', row.names=F)



# Q10
library(xlsx)
write.xlsx(iris, 'iris.xlsx', row.names = F)
read.xlsx('iris.xlsx', sheetIndex = 1)


# Q11
# 7번 라인의 명령문을 sink('log.txt', append = T) 로 수정합니다.