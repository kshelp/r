# (1)
library(carData)
str(KosteckiDillon)

# (2)
tot.mean <- mean(KosteckiDillon$dos)
tot.mean

# (3)
for (rate in (1:5)*0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon)*rate)
  sam.data <- KosteckiDillon[idx,'dos']  # 샘플링 자료 추출
  tmp.mean <- mean(sam.data)             # 샘플링 자료 평균
  cat('Diff:', rate, tot.mean-tmp.mean, '\n')
}  

# (4)
cbn <- combn(1:5, 3)
cbn
ncol(cbn)     # 조합의 개수