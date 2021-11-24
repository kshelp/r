a <- 1:10
b <- 1:100
sink('result.txt', append = T)
cat('1부터 10까지 자연수의 합은', sum(a), '입니다\n')
cat('1부터 100까지 자연수의 합은', sum(b), '입니다\n')
sink()