#' CalcOR Function
#'
#' For a 2X2 talbe, this function takes two marginal probabilities and the odds ratio
#' and returns 4 cell probabilities
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
