# 10장 연습문제
# Q01
# 데이터 정제 또는 데이터 전처리


# Q02
# ② 히스토그램


# Q03
# ① 도수 분포표


# Q04
# (1)
install.packages('Ecdat')
library(Ecdat)
head(Hdma)
tbl <- table(Hdma$self)
tbl
barplot(tbl)

# (2)
tbl <- table(Hdma$single)
tbl
pie(tbl)

# (3)
boxplot(Hdma$uria)
boxplot.stats(Hdma$uria)
length(boxplot.stats(Hdma$uria)$out)

#(4)
deny.hir <- mean(Hdma$hir[Hdma$deny=='yes'])
approve.hir <- mean(Hdma$hir[Hdma$deny=='no'])
cat('승인 거절:', approve.hir, deny.hir, '\n')

# (5)
# 승인된 경우 유지비용 비율이 0.25, 거절된 경우 유지비용 비율이 0.29 이므로 수입대비 주택유
# 지비용 비율이 높으면 대출에 불리하다.
