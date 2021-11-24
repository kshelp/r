ds <-  c('A', 'C', 'A', 'D', 'B',  'D', 'C', 'A', 'D', 'A', 'C', 'C', 'A', 'B', 'A')
tbl <- table(ds)
pie(tbl, main='선호 브랜드',
    col=c('brown','green','red','black'))           # 파이의 색 지정