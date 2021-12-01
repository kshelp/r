# 04장 연습문제

# Q04 by 견호영
a <- 25:150
a
condi <- (a%%3==0) & (a<100)
condi
sum(condi)
a[condi]


# Q05 by 견호영
a <- c('good', 'great', 'bad', 'okay', 'good','bad', 'good')
f <- factor(a)
levels(f)
#  "bad"   "good"  "great" "okay"


# Q06 by 오세준
shopping <- c(76000, 52000, 36000)
off <- c(0.05, 0.1, 0.05)
sale.shopping <- c(shopping * (1-off))
sum(sale.shopping)
# 153200


# Q07 by 오세준
smartphone <- list(model = "iphone_se",
                   capacity = c(64, 128, 256),
                   dispaly = 'Retina',
                   color = c('black', 'red', 'white'))
smartphone$color
# "black" "red"   "white"


# Q08 by 이원민
weight <- c(56, 23, 89, 46, 76, 14, 97, 72, 68, 62, 35) # 단위 kg
names(weight) <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k')
W <- sum(weight)
W
# 638
condi <- weight > (W-600)
condi
weight[condi]
a <- min(weight[condi])
a
# 46
names(weight[weight==a])
# "d"


# Q09 by 이원민
wether <- c('여름','봄','여름','겨울','봄',
     '겨울','여름','여름','봄','가을')
wether = factor(wether)
unique(wether)
# 가을 겨울 봄 여름
levels(wether)
# "가을" "겨울" "봄"   "여름"



# Q10 by 김원태
country <- c('호주', '독일', '영국', '일본', '미국', '중국', '호주', '영국', '중국', '일본',
                    '터키', '미국', '중국', '중국', '호주', '터키', '독일', '일본', '중국', '독일')
country <- factor(country)
levels(country)
# "독일" "미국" "영국" "일본" "중국" "터키" "호주"
as.integer(country)
# 7 1 3 4 2 5 7 3 5 4 6 2 5 5 7 6 1 4 5 1



# Q11 by 김원태
post <- list(user_id = 'mr_steve',
             post_id = 'p11010',
             vies = 37,
             image = FALSE,
             like = c('creeper', 'alex', 'skeleton', 'enderman'))
post


# Q12 by 박준형
account <- list(name = '하늘', # 계좌 소유주
                number = 123-468-120566, # 계좌번호
                balance = 4128750, # 현재 보유 금액
                history = c(-50000, +20000, -32500, -79000, +42000))
                # history는 최근 거래 내역 : +는 입금, -는 출금

# 입금
length(account$history[account$history>0])
# 2

# 출금
length(account$history[account$history<0])
# 3