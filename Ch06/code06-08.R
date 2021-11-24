install.packages('xlsx')                                  # 패키지 설치하기
library(xlsx)                                             # 패키지 불러오기
air <- read.xlsx('C:/Rworks/airquality.xlsx', header=T,
                 sheetIndex=1)                            # .xlsx 파일 읽기
head(air)                              