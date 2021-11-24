d <- c(1,2,3,4,5,6,7,8,9,10)
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)                          # 올림차순 정렬 
sort(d, decreasing = FALSE)      # 올림차순 정렬 
sort(d, decreasing = TRUE)       # 내림차순 정렬

v1 <- median(d) 
v1
v2 <- sum(d)/length(d)
v2