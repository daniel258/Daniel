#' CItrans Function
#'
#' CItrans takes coef estimate, its estimated se, calculates CI according to normal asusmption, and then transormate the ci according to the function Ftrans
#' @param coef se Ftrans cover
#' @export
#' @examples
#'
CItrans <- function(coef, se, Ftrans, cover = 0.95)
{
  alpha <- 1- cover
  ci.no.trans <- coef + c(-1,1)*qnorm(1- alpha/2)*se
  ci <- do.call(Ftrans, list(ci.no.trans))
  return(ci)
  }
