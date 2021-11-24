setwd('C:/Rworks')                            # 작업 폴더 지정
air <- read.csv('airquality.csv', header=T)   # .csv 파일 읽기
head(air)
class(air)                                    # air의 자료구조 확인