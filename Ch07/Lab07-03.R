determine <- function(score){ }

determine <- function(score){
  total <- apply(score, 1, sum)
  scoreset <- cbind(score, total)
  result <- c()
  
  for(i in 1:nrow(scoreset)){
    if(scoreset[i,1] < 20*0.4 | scoreset[i,2] < 20*0.4 | scoreset[i,3] < 60*0.4){
      result[i] <- '불합격'
    }else if(scoreset[i, 4] >= 60){
      result[i] <- '합격'
    }else{
      result[i] <- '불합격'
    }  
    cat(i, '번째 응시생은', result[i],'입니다.\n')
  }
  return(result) #저장된 결과 반환
}

source('myfunc.R')

sub1 <- c(14, 16, 12, 20, 8, 6, 12, 18, 16, 10)
sub2 <- c(18, 14, 14, 16, 10, 12, 10, 20, 14, 14)
sub3 <- c(44, 38, 30, 48, 42, 50, 36, 52, 54, 32)
score <- data.frame(sub1, sub2, sub3)

result <- determine(score)
result

result <- determine(head(score, 3))
result

# cat(i, '번째 응시생은', result[i],'입니다.\n')

source('myfunc.R')
result <- determine(score)
result