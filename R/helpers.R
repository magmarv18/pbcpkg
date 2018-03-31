#
# Detta är interna funktioner som enbart anropas från andra funktioner.
#
# getYears - konverterar kolumnen time (överlevnad i dagar) till år. 
# getPlacebo - returnerar en vektor med överlevnaden (i år) för avlidna patienter i kontrollgruppen.
# getTreated - returnerar en vektor med överlevnaden (i år) för avlidna patienter i behandlingssgruppen.
#

#' 
#' @export
getYears <- function(){
  return( pbcdata$time/365.25 )
}

#' 
#' @export
getPlacebo <- function(){
  years <- getYears()
  return(years[which(pbcdata$trt == 2 & pbcdata$status == 2)]) 
}

#' 
#' @export
getTreated <- function(){
  years <- getYears()
  return(years[which(pbcdata$trt == 1 & pbcdata$status == 2)]) 
}