#' Pie-diagram över fördelningen mellan kvinnor och män i försöksgruppen.
#' 
#' @param Inga Inga inparametrar
#' @return Inga returvärden
#' 
#' @export
mf.pie <- function(){
  lbls <- c("Kvinnor", "Män")
  title <- "Fördelning mellan kvinnor och män"
  
  pie(table(pbcdata$sex), labels=lbls, main=title)
}
