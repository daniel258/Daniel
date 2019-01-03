#
#' CatIndex Function
#'
#' Useful for simulations: CatIndex print on screen the infex index.var and its value
#' @param index.var  index.char
#' @keywords simulations
#' @export
#' @examples
#' i = 7
#' CatIndex(i)
#' CatIndex(i,"index i")
CatIndex <- function(index.var, index.char = NULL)
{
  if(missing(index.char)) { index.char <- deparse(substitute(index.var))}
  cat(paste(index.char,"="), index.var, "\n")
}
