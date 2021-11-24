col_na <- function(y) {
  return(sum(is.na(y)))
}

apply(airquality, 2, FUN=col_na)