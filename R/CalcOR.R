#' CalcOR Function
#'
#' Calculate Odds ratio from data
#'
#' @param TRUE.
#' @keywords CalcOR
#' @export
#' @examples
#' CalcOR(c(10,20,20,50))
#'
CalcOR <- function(vec.abcd, a = NULL, b = NULL, cc = NULL, d = NULL, vect = T)
{
  if (vect==T)
  {
    a <- vec.abcd[1]
    b <- vec.abcd[2]
    cc <- vec.abcd[3]
    d <- vec.abcd[4]
  }
  or <-   a*d/b/cc
  return(or)
}
