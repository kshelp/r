# (1)
library(carData)
data(UN98)        # 데이터셋 불러오기
head(UN98)
help(UN98)        # 데이터셋에 대한 설명보기 

# (2)
df <- UN98[, c('region', 'tfr')]
df <- df[complete.cases(df),]
df <- aggregate(df[,'tfr'], by=list(region=df$region), FUN='mean')

ggplot(df, aes(x=region,y=x)) +         # 그래프를 그릴 데이터 지정
  geom_bar(stat='identity',             # 막대그래프의 형태 지정  
           width=0.7, fill=rainbow(5))  # 막대의 폭과 색 지정

# (3)
library(treemap)                    # treemap 패키지 불러오기

df <- UN98[,c('region','lifeFemale','illiteracyFemale')]
df <- df[complete.cases(df),]       # 결측값 제거
df$country <- rownames(df)          # 국가명을 열로 추가

treemap(df,
        index=c('region','country'), # 계층구조 설정(대륙-국가)
        vSize='lifeFemale',          # 타일의 크기
        vColor='illiteracyFemale',   # 타일의 색
        type='value',                # 타일 컬러링 방법
        bg.labels='yellow',          # 레이블의 배경색
        title="World's Women")       # 나무지도 제목  

# (4)
df <- UN98[,c('region','educationMale','educationFemale')]
df <- df[complete.cases(df),]   # 결측값 제거

ggplot(data=df, aes(x=educationMale, y=educationFemale,
                    color=region)) + 
  geom_point(size=3) +
  ggtitle('남성, 여성의 교육수준') +   
  theme(plot.title = element_text(size=25, face='bold', colour='steelblue'))  