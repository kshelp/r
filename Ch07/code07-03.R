# if-else를 이용한 처리 ###############
a <- 10
b <- 20

if  (a>b) {
  c <- a
} else {
  c <- b
}
print(c)

# ifelse를 이용한 처리  ###############
a <- 10
b <- 20

c <- ifelse(a>b, a, b)
print(c)