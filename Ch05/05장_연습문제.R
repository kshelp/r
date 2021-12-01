# 05장 연습문제
# Q01
# 데이터프레임


# Q02
# (A) 관측값 (B) 변수


# Q03
x <- c(2, 4, 6, 8)
y <- c(10, 12, 14, 16)
z <- c(18, 20, 22, 24)
m <- cbind(x, y, z)
m

matrix(c(2, 10, 18,
         4, 12, 20,
         6, 14, 22,
         8, 16, 24),
       nrow = 4 , byrow = T )

matrix(c(2, 4, 6, 8,
         10, 12, 14, 16,
         18, 20, 22, 24),
       ncol = 3 , byrow = F )


# Q04
m <- matrix(c(9, 7, 5, 3, 8, 11, 2, 9), ncol=4, byrow = T)
colnames(m) <- c('a', 'b', 'c', 'd')
m
rownames(m) <- c('x', 'y')
m


# Q05
m <- matrix(c(9, 7, 5, 3, 8, 11, 2, 9), ncol=4, byrow = T)
m
# (1) m <- t(m)
# (2) df <- data.frame(m)
# (3) df.new <- data.frame(df, info)
# (4) class(df.new)


# Q06
blood <- c('A', 'O', 'AB', 'B', 'B')
rh <- c('+', '+', '-', '+', '+')
age <- c(21, 30, 43, 17, 26)
# (1) df <- data.frame(blood, rh, age)
# (2) colnames(df)
# (3) df.nb <- subset(df, blood != 'B')


# Q07
str(cars)
# (1) 50 2
# (2) speed 숫자형, dist 숫자형


# Q08
# (1) T (2) T (3) F (4) T (5) F


# Q09
# (1)
번호 <- 1:7
제목 <- c('그대랑', '다툼', '빨래', '두통', '보조개', '매듭', '이상해')
좋아요 <- c(16075, 8218, 12119, 738, 3200, 16144, 5110)
love <- data.frame(번호, 제목, 좋아요)
love

# (2)
best <- subset(love, 좋아요 == max(좋아요))
best


# Q10
# matrix 연산
# (mid + final) / 2


# Q11
# (1) class(cars)
# (2) dim(cars)
# (3) head(cars)
# (4) str(cars)
# (5) colSums(cars)
# (6) max(cars$dist)
# (7) subset(cars, dist == max(cars$dist))


# Q12
# (1) is.matrix(InsectSprays)
# (2) str(InsectSprays)
# (3) tail(cars, n = 10)
# (4) levels(InsectSprays$spray)
# (5) table(InsectSprays$spray)
# (6) InsectSprays.e <- subset(InsectSprays, spray == 'E')
# (7) mean(InsectSprays.e$count)

