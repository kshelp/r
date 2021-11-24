setwd('C:/Rworks')                                       # 작업 폴더 지정
air <- read.table('airquality.txt', header=T, sep=' ')   # 파일 읽기
head(air)                                                # 내용 확인