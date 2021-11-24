# (1) 자료 확인
st <- data.frame(state.x77)     # 매트릭스를 데이터프레임으로 변환 
head(st)

# (2) 다중 산점도 작성
plot(st)

# (3) 다중 상관계수
cor(st)