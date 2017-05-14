# useful for simulations: CatIndex print on screen the infex index.var and its value
CatIndex <- function(index.var, index.char = NULL)
{
  if(missing(index.char)) { index.char <- deparse(substitute(index.var))}
  cat(paste(index.char,"= "), index.var, "\n")
}
