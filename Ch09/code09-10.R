vars <- c('mpg','disp','drat','wt')    # 대상 변수 
target <- mtcars[,vars]                # 대상 자료 생성  
head(target)
pairs(target,                          # 대상 자료     
      main='Multi plots') 