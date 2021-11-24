# (1) 자료 준비
grad <- state.x77[,'HS Grad']   # 주별 고등학교 졸업율
grad                

# (2) 사분위수
summary(grad)
var(grad)                # 분산
sd(grad)                 # 표준 편차

# (3) 히스토그램
hist(grad, main='주별 졸업율',
     xlab='졸업율',
     ylab='주의 개수',
     col='orange')

# (4) 상자그림
boxplot(grad, main='주별 졸업율',
        col='orange')

# (5) 졸업율이 가장 낮은 주
idx <- which(grad==min(grad))
grad[idx]

# (6) 졸업율이 가장 높은 주
idx <- which(grad==max(grad))
grad[idx]

# (7) 졸업율이 평균 이하인 주
idx <- which(grad<mean(grad))
grad[idx] 