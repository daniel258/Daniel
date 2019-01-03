#' MargORtoJoint Function
#'
#' For a 2X2 talbe, this function takes two marginal probabilities and the odds ratio
#' and returns 4 cell probabilities
#' @param TRUE.
#' @keywords MargORtoJoint
#' @export
#' @examples
#' MargORtoJoint(0.4,0.7,2)

MargORtoJoint <- function(p1marg, p2marg, OR)
{
  p12 <- ifelse(OR > 0.999 & OR < 1.001, p1marg*p2marg,
                (1 + (p1marg + p2marg)*(OR - 1) - sqrt((1 + (p1marg + p2marg)*(OR - 1))^2 - 4*OR*(OR -1)*p1marg*p2marg))/(2*(OR - 1)))
  p1 <- p1marg - p12
  p2 <- p2marg - p12
  p0 <- 1 - p12 - p1 - p2
  prob <- cbind(p0, p1, p2,p12)
  if (any(prob<0) | any(prob>1)) {
    stop(paste("Problems with probabilities. prob =", prob))  }
  return(prob)
}
