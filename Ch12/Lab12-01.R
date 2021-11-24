# (1)
library(treemap)  
library(carData)                  
head(Ericksen)

# (2)
ds <- subset(Ericksen, city=='state')

# (3)
ds$stname <- rownames(ds)
treemap(ds,
        index=c('stname'),       # 타일에 주 이름 표기
        vSize='poverty',         # 타일의 크기
        vColor='crime',          # 타일의 컬러
        type='value',            # 타일 컬러링 방법
        title='USA states poverty and crime' ) # 나무그림의 제목

# (4)
treemap(ds,
        index=c('stname'),       # 타일에 주 이름 표기
        vSize='housing',         # 타일의 크기
        vColor='minority',       # 타일의 컬러
        type='value',            # 타일 컬러링 방법
        palette=heat.colors(nrow(ds)), # 컬러 팔레트  
        title='USA states poverty and crime' ) # 나무그림의 제목