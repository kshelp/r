ozone <- airquality$Ozone

# (1)
sum(is.na(ozone)) 

# (2)
ozone.pure <- as.vector(na.omit(ozone))