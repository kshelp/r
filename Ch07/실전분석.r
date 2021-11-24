# 1
install.packages('reshape2')
library(reshape2)
str(tips)


# 2
unique(tips$sex)

idx <- which(tips[, 'sex'] == 'Female')
avg.female <- mean(tips[idx, 'tip'])

idx <- which(tips[, 'sex'] == 'Male')
avg.male <- mean(tips[idx, 'tip'])

avg.female
avg.male


# 3
unique(tips$smoker)

idx <- which(tips$smoker == 'Yes')
avg.smoker <- mean(tips[idx, 'tip'])

idx <- which(tips$smoker == 'No')
avg.nonsmoker <- mean(tips[idx, 'tip'])

avg.smoker
avg.nonsmoker


# 4
meanbycol.tip <- function(tips, colname){ }


# 5

meanbycol.tip <- function(colname) {
  value <- unique(tips[, colname]) # ① 값의 종류를 구함
  result <- list()
  for(i in 1:length(value)) { # ② 값의 종류별로 평균을 구함
    idx <- which(tips[,colname] == value[i]) # ②-1
    result[i] <- mean(tips[idx,'tip']) # ②-2
  }
  names(result) <- value # ③ 결과값에 이름을 붙임
  return(result) # ④ list 결과값 반환
}


# 6
source('myfunc.R')
meanbycol.tip('sex')
meanbycol.tip('smoker')


# 7
meanbycol.tip('size')
meanbycol.tip('day')


# 9
categorize.tip <- function(tips){
  tip_ratio <- tips$tip/tips$total_bill * 100
  class <- c()
  for(i in 1:nrow(tips)){
    if(tip_ratio[i] < 10){
      class[i] <- 1
    }else if(tip_ratio[i] < 15){
      class[i] <- 2
    }else if(tip_ratio[i] < 20){
      class[i] <- 3
    }else{
      class[i] <- 4
    }
  }
  tips.new <- cbind(tips, type = class, ratio = tip_ratio)
  return(tips.new)
}


# 10
source('myfunc.R')
tips.new <- categorize.tip(tips)
head(tips.new)


# 11
res <- c()
for(i in 1:4){
  idx <- which(tips.new[,'type'] == i)
  tips.tmp <- tips.new[idx, ]
  res.tmp <- apply(tips.tmp[c('type', 'total_bill', 'tip', 'ratio')], 2, mean)
  res <- rbind(res, res.tmp)
  }
rownames(res) <- 1:4
res

