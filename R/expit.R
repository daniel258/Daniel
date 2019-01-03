#' expit Function
#'
#' This function carries out the usual expit(x)= exp(x)/(1+exp(x)) function
#' @param x any number
#' @keywords logit
#' @export
#' @examples
#' expit(0)
expit <- function(x) { exp(x)/(1+exp(x))}
