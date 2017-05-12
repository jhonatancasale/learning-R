sanity.check <- function(first, second, error=1e-16) {
  if(is.character(first) | is.character(second))
    return (first == second)
  sum((first - second) ^ 2) < error
}

"%==%" <- function(first, second) {
  sanity.check(first, second)
}