# (1)
str(longley)
head(longley)

# (2)
df <- longley[,c('GNP', 'Unemployed', 'Armed.Forces', 'Population','Employed')]
df

# (3)
plot(df)

# (4)
cor(df)