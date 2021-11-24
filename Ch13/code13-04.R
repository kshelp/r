# 업종별 기업 분포
table(ds$category)
tmp <- sort(table(ds$category), decreasing=T)
top.10.category <- tmp[1:10]
top.10.category                    # 상위 10개 업종

par(mar=c(10,4,4,2))               # 그래프 여백 조정
barplot(top.10.category,
        main='기업수 상위 10개 업종',
        col='pink',
        las=2)
par(mar=c(5,4,4,2))

# 업종별 기업자산 분포
tmp <- ds[ds$category %in% names(top.10.category),]
levels(tmp$category)
tmp$category <- factor(tmp$category)
levels(tmp$category)

par(mar=c(10,4,4,2))               # 그래프 여백 조정
boxplot(assets~category, data=tmp,
        ylim=c(0,100),
        xlab='',
        las=2)
par(mar=c(5,4,4,2))