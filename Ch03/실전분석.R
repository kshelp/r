# 1
sales <- c(750,740,760,680,700,710,850,890,700,720,690,730)
names(sales) <- c('1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월')
sales

# 2
sales['7월']

# 3
sales['1월']+sales['2월']

# 4
max.month <- sort(sales, decreasing=T)
max.month[1]

# 5
max.month[1] - min.month[1]