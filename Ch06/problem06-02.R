library(svDialogs)
name <- dlgInput('Input your name')$res
cat('제 이름은 ', name, '입니다.', sep = "")