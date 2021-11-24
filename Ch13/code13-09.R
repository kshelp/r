str(ds)
head(ds)
unique(ds$loc)                             # 관측 장소
range(ds$mdate)                            # 측정 기간

# 열별 결측값 확인
for (i in 3:8) {
  cat(names(ds)[i], sum(is.na(ds[,i])), sum(is.na(ds[,i]))/nrow(ds), '\n')   
}
ds <- ds[,-8]                              # PM25 열 제거
ds <- ds[complete.cases(ds),]              # 결측값 포함 행 제거