head(x)
x[!complete.cases(x),]              # NA가 포함된 행들을 나타냄
y <- x[complete.cases(x),]          # NA가 포함된 행들을 제거
head(y)                             # 새로운 데이터셋 y의 내용 확인