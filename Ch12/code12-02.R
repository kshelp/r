library(treemap)                            # treemap 패키지 불러오기
st <- data.frame(state.x77)                 # 매트릭스를 데이터프레임으로 변환
st <- data.frame(st, stname=rownames(st))   # 주의 이름 열 stname을 추가 

treemap(st,
        index=c('stname'),                   # 타일에 주 이름 표기
        vSize='Area',                        # 타일의 크기
        vColor='Income',                     # 타일의 컬러
        type='value',                        # 타일 컬러링 방법
        title='USA states area and income' ) # 나무그림의 제목
