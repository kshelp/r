tmp <- carprice[,c('Price','gpm100','MPG.city','MPG.highway')]
plot(tmp)
cor(tmp)
# gpm100과 MPG.highway의 상관계수가 –0.95로 가장 상관도가 높다.