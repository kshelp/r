# else가 생략된 if문
job.type <- 'B'
bonus <- 100           
if (job.type == 'A') {
  bonus <- 200            # 직군이 B일 때 실행
} 
print(bonus)

# -------------------
a <- 10
if (a<5) {
  print(a)
} else {
  print(a*10)
  print(a/10)
}

# -------------------
a <- 10
b <- 20
if (a>5 & b>5) {           # and
  print(a+b)
}
if (a>5 | b>30) {          # or
  print(a*b)
}