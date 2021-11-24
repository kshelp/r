boxplot(Petal.Length~Species,            # 자료와 그룹 정보
        data=iris,                       # 자료가 저장된 자료구조
        main='품종별 꽃잎의 길이',       # 그래프의 제목    
        col=c('green','yellow','blue'))  # 상자들의 색