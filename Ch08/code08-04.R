# [코드 8-3]에 이어서 실행

barplot(ds, main='favorite season', 
        col=c('blue','red','green','yellow'))     # 막대의 색을 각각 지정

barplot(ds, main='favorite season', 
        col=rainbow(4))       # 레인보우 팔레트에서 4개의 색을 선택