myfunc <- function(x,y) {
  val.sum <- x+y
  val.mul <- x*y 
  return(list(sum=val.sum, mul=val.mul)) 
}

result <- myfunc(5,8) 
s <- result$sum            # 5와 8의 합
m <- result$mul            # 5와 8의 곱
cat('5+8 =', s, '\n') 
cat('5*8 =', m, '\n')