install.packages('svDialogs')     # 패키지 설치
library(svDialogs)
user.input <- dlgInput('Input income')$res
user.input
income <- as.numeric(user.input)     # 문자열을 숫자로
income
tax <- income * 0.05                 # 세금 계산  
cat('세금: ', tax)