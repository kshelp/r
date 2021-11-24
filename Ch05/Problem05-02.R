v <- seq(from = 5, to = 60, by = 5)

# (1)
a <- matrix(v, nrow = 3, byrow = T); b <- matrix(v, nrow = 3, byrow = F)

# (2) 
c <- rbind(a,b)

# (3) 
d <- cbind(a,b)