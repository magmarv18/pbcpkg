#
# Detta är interna funktioner som enbart anropas från andra funktioner.
#
# getYears - konverterar kolumnen time (överlevnad i dagar) till år. 
# getPlacebo - returnerar en vektor med överlevnaden (i år) för avlidna patienter i kontrollgruppen.
# getTreated - returnerar en vektor med överlevnaden (i år) för avlidna patienter i behandlingssgruppen.
#

getYears <- function(){
  return( pbcdata$time/365.25 )
}

getPlacebo <- function(){
  years <- getYears()
  return(years[which(pbcdata$trt == 2 & pbcdata$status == 2)]) 
}

getTreated <- function(){
  years <- getYears()
  return(years[which(pbcdata$trt == 1 & pbcdata$status == 2)]) 
}