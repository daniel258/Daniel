#' Logit Function
#'
#' This function carries out the usual logit(p)=log(p/(1-p)) function
#' @param TRUE.
#' @keywords logit
#' @export
#' @examples
#' logit(0.5)

logit <- function(p)
  {
  if (p<0 | p>1) stop("value is not in [0,1]")
  log(p/(1-p))}
