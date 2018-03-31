#' Ritar histogram över överlevnadstiden i år för den behandlade gruppen.
#' 
#' @param Inga Inga inparametrar
#' @return Inga returvärden
#' 
#' @export
trt.hist <- function(){
  #
  # Laddar interna hjälpfunktioner
  #
  source("R/helpers.R")
  
  # Vektor med överlevnadstid för behandlade patienter
  treated <- getTreated()
  
  hist(treated,
       breaks = seq(0,as.integer(max(treated)+1),1),
       main = "Överlevnadstid för behandlingsgruppen",
       xlab = "Överlevnadstid (år)",
       ylab = "Frekvens",
       col = "green"
  )
}

#' Ritar histogram över överlevnadstiden i år för kontrollgruppen.
#' 
#' @param Inga Inga inparametrar
#' @return Inga returvärden
#' 
#' @export
ctl.hist <- function(){
  #
  # Laddar interna hjälpfunktioner
  #
  source("R/helpers.R")

  # Vektor med överlevnadstid (år) för patienter i kontrollgruppen
  placebo <- getPlacebo()
  
  hist(placebo,
       breaks = seq(0,as.integer(max(placebo)+1),1),
       main = "Överlevnadstid för kontrollgruppen",
       xlab = "Överlevnadstid (år)",
       ylab = "Frekvens",
       col = "blue"
  )
}