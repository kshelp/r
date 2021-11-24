burger <- matrix(c(514, 917, 11,
                   533, 853, 13,
                   566, 888, 19),
                 nrow = 3,
                 byrow = T)

burger              # 매트릭스의 내용 확인
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('kcal', 'na', 'fat')
burger              # 매트릭스의 내용 확인

burger['M', 'na']   # M사의 나트륨 함량
burger['M', ]       # M사의 모든 영양 정보
burger[, 'kcal' ]   # 모든 브랜드의 칼로리 정보