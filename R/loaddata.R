#' Ladda data från extern källa.
#' 
#' @return Returnerar inläst dataset.
#' @examples
#' pbcdata <- loadRemote()

loadRemote <- function(){
  pbcdata <- read.csv("http://www-eio.upc.edu/~pau/cms/rdata/csv/survival/pbc.csv", header = T)
  return(pbcdata)
}
