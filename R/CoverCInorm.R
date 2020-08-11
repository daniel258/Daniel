#' CoverCInorm Function
#'
#' Given an estimate and standard error, returns "T" if the CI covers the true value
#'
#' @param TRUE.
#' @keywords CalcOR
#' @export
#' @examples
#' CoverCInorm(est = 0.4, se = 0.1, truth = 0.5)
#'
CoverCInorm <- function(est, se, truth, cover.prob = 0.95)
{
  alpha <- 1 - cover.prob
  z <- qnorm(1 - alpha/2)
  ci.l <- est - z*se
  ci.h <- est + z*se
  cover <- (ci.l < truth) & (ci.h > truth)
  return(cover)
}
