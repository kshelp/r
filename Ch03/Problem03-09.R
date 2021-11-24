sales <- c(20, 21, 77, 98, 52, 34, 27)
names(sales) <- c('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat')

# (1) 
sales[1:5]

# (2) 
sales[-(6:7)]

# (3) 
sales[-c('fri','sat')]

# (4) 
sales[c('sun', 'mon', 'tue', 'wed', 'thu')]