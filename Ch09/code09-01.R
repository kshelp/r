favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER',
              'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')   # 자료 입력
ds <- table(favorite)                                         # 도수분포 계산
ds                
pie(ds, main='선호 계절',                                     # 원그래프 작성
    radius=1)                                   