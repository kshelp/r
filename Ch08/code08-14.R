# 코드 8-13 에 이어서 실행
par(mfrow=c(1, 1), mar=c(5, 5, 5, 7))        # 그래프 윈도우 설정
barplot(ds, main='인구 추정', 
        col=c('green','blue','yellow'),
        beside=TRUE,
        legend.text=c('0~14세','15~64세','65세 이상'),
        args.legend = list(x='topright', bty='n', inset=c(-0.25,0)))
par(mfrow=c(1, 1), mar=c(5,4,4,2)+0.1)      # 그래프창 설정 해제