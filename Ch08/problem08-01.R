blood <- c('A형', 'B형', 'B형', 'AB형', 'O형', 'A형', 'O형', 'A형', 'B형', 'A형')

ds <- table(blood)
barplot(ds, main = 'blood distribution',
        xlab = 'frequency',
        ylab = 'type',
        col = 'purple',
        names = c('A', 'AB', 'B', 'O'),
        horiz = TRUE,
        las = 1 )