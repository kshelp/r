score <- c(60,40,95,80)
names(score) <- c('John','Jane','Tom','David')
score                     # 성적 자료 출력                  
idx <- which.max(score)
names(score)[idx]         # 성적이 제일 좋은 학생의 이름    