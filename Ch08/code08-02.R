# [코드 8-1]에 이어서 실행

ds <- table(favorite)                      # 도수분포표 저장
ds                                         # 도수분포표 내용 확인     
barplot(ds, main='favorite season')        # 막대그래프 작성