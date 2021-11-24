# 코드 8-12에 이어서 실행

par(mfrow=c(1, 1), mar=c(5, 5, 5, 7))
barplot(ds, main='인구 추정', 
        col=c('green','blue','yellow'),
        beside=TRUE,
        legend.text=T,
        args.legend = list(x='topright', bty='n', inset=c(-0.25,0)))