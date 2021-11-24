a <- 30:120

condi <- a %% 3 == 0   # (1)
sum(condi)             # (2)
a[condi]               # (3)
sum(a[condi])          # (4)