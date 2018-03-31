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

#' Pie-diagram över fördelningen mellan transplanterade, avlidna och överlevande (vid studietidens slut)
#' 
#' @param Inga Inga inparametrar
#' @return Inga returvärden
#' 
#' @export
status.pie <- function(){
  lbls <- c("Överlevande", "Transplanterade", "Avlidna")
  title <- "Status vid endpoint"
  
  pie(table(pbcdata$status), labels=lbls, main=title)
}