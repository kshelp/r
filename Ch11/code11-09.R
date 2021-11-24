name <- c('정대일','강재구','신현석','홍길동')
order(name)                            # 오름차순
order(name, decreasing=T)              # 내림차순

idx <- order(name)
name[idx]                              # 오름차순 정렬