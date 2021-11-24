table(ds$country)
tmp <- sort(table(ds$country), decreasing=T)
top.10.contry <- tmp[1:10]
top.10.contry                     # 상위 10개국

par(mar=c(8,4,4,2))               # 그래프 여백 조정
barplot(top.10.contry,
        main='기업수 상위 10개국',
        col=rainbow(10),          # 레인보우 팔레트
        las=2
)
par(mar=c(5,4,4,2))