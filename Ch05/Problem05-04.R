# (1)
m <- matrix(c(50, 5, 10, 100), nrow = 2)
colnames(m) <- c('prd_Y', 'prd_N')
rownames(m) <- c('act_Y', 'act_N')

# (2)
m['act_N', 'prd_N']