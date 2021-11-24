kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')

burger <- data.frame(brand, kcal, na, fat, menu)
burger 

rownames(burger) <- c('M', 'L', 'B')

burger['M', 'na']         # M사의 나트륨 함량
burger['M', ]             # M사의 모든 영양 정보
burger[, 'kcal' ]         # 모든 브랜드의 칼로리 정보
burger[c('M','B'),'menu'] # M과 B사의 menu 정보