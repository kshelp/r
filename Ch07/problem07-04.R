num <- 1:200
label <- c()

for(i in num){
  label[i] <- ifelse(i %% 2 != 0, 'odd', 'even')
}

num.new <- data.frame(num, label)