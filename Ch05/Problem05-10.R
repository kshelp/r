mtcars                           # (1)
mtcars.m <- as.matrix(mtcars)    # (2)

mtcars[ , 'hp']                  # (3)
mtcars[ , 4]                     # (4)
mtcars$hp                        # (5)

mtcars.m[ , 'hp']                # (6)
mtcars.m[ , 4]                   # (7)
mtcars.m$hp                      # (8)