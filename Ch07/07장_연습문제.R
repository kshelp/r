# 07장 연습문제
# Q01
n <- 12
if(n %% 2 == 1) {
  type <- 'odd'
} else {
  type <- 'even'
}
print(type)


# Q02
if(n < 0){
  res <- -n
} else{
  res <- n
}
res <- ifelse(n < 0, -n, n)


# Q03
input <- 1:10
n <- length(input)
switch <- TRUE
if(switch == T){
  for(i in 1:n){
    result <- result * i
  }
} 
else{
  result <- sum(10)
}
print(result)

# 1) if문 전에 result 변수를 선언하고 초기화 합니다.
# 2) else문을 if문이 끝나는 괄호 앞으로 한 줄 올립니다.
input <- 1:10
n <- length(input)
switch <- TRUE
result <- 1
if(switch == T){
  for(i in 1:n){
    result <- result * i
  }
}else{
  result <- sum(10)
}
print(result)



# Q04
n <- seq(1,20,by=2)
res <- 1
for(i in n){
  res <- res * i
}
print(res)

# 또는
res <- 1
for(i in 1:20){
  if(i%%2==1) {
    res <- res * i
  }
}
print(res)


# Q05
n <- seq(1,20,by=2)
i <- 1
res <- 1
while(i <= length(n)){
  res <- res * n[i]
  i <- i + 1
}
print(res)

# 또는
i <- 1
res <- 1
while(i <= 20){
  if(i%%2==1) {
    res <- res * i
  }
  i <- i + 1
}
print(res)


# Q06
apply(mtcars[c('mpg', 'hp', 'wt')], 2, mean)  # 열 평균


# Q07
triangle.area <- function(base, height) {
  area <- 1/2 * base * height
  return(area)
}
triangle.area(5.2, 4.6)



# Q08
multiple.answer <- function(data){
  res.min <- min(data)
  res.max <- max(data)
  res.avg <- mean(data)
  result <- list(min = res.min, max = res.max, avg = res.avg)
  return(result)
}

data <- c(1, 3, 5, 7, 9)
result <- multiple.answer(data)
cat('min:', result$min, ', max:', result$max, ', avg:', result$avg, '\n')


# Q09
idx.max <- which.max(mtcars$mpg)
rownames(mtcars[idx.max,]) # 또는 rownames(mtcars)[idx.max]

idx.min <- which.min(mtcars$mpg)
rownames(mtcars[idx.min,]) # 또는 rownames(mtcars)[idx.min]


# Q10
# 생략


# Q11
a <- c(0,1)
for(i in 3:20){
  a[i] <- a[i-1] + a[i-2]
}
print(a)


# Q12
# (1)
apply(USArrests[c('Murder', 'Assault', 'Rape')], 1, sum)

# (2)
apply(USArrests[c('Murder', 'Assault', 'Rape')], 2, mean)

# (3)
rownames(USArrests[which.max(USArrests$Murder), ])
# 또는
rownames(USArrests)[which.max(USArrests$Murder)]

# (4)
USArrests[which.max(USArrests$Assault), 'Murder']
# 또는
USArrests$Murder[which.max(USArrests$Assault)]
