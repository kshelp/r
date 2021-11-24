mydiv <- function(a, b){
  n <- a %/% b        # 몫
  r <- a %% b         # 나머지
  list(quontient = n, remainder = r)
}

result <- mydiv(24, 7)
result$quontient      # 몫 출력
result$remainder      # 나머지 출력