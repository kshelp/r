death <- as.vector(window(mdeaths, 1974, c(1974, 12)))

plot(1:12,                       # x data
     death,                      # y data (1974년 자료)
     main='월별 사망자 추이',    # 그래프 제목
     type='b',                   # 그래프 종류
     lty=1,                      # 선의 종류
     xlab='Month',               # x축 레이블
     ylab='사망자수'             # y축 레이블
)