# 코드 9-1에 이어서 실행
install.packages('plotrix')

library(plotrix)
pie3D(ds, main='선호 계절',
      labels=names(ds),                              # 파이별 레이블 지정
      labelcex=1.0,                                  # 레이블의 폰트 크기
      explode=0.1,                                   # 파이 간 간격
      radius=1.5,                                    # 파이의 크기 
      col=c('brown','green','red','yellow'))         # 파이의 색 지정