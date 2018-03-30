#' @name trt.survival
#' @title{ Undersöker om det föreligger en skillnad i överlevnadstid mellan lm-behandlade och placebo-behandlade.}
#' @details{
#' Hypotes:
#'   
#'   h0 - ingen skillnad föreligger
#'   
#'   h1 - det finns en skillnad
#' 
#'   Metod: Mann-Whitney-Wilcoxon-test, då vi inte kan utgå från normalfördelat underlag. 
#' 
#'   Funktionen skriver dels ut resultatet från MWW samt ritar en boxplot med de jämförda subseten.}
#' 
#' @param Inga Inga inparametrar
#' @return Inga returvärden
#' 
#' @export
trt.survival <- function(){
  #
  # dagar -> år, ta hänsyn till skottår.
  #
  years <- pbcdata$time/365.25
  
  #
  # Gör utskriften från wilcox.test lite snyggare
  #
  treated <- years[which(pbcdata$trt == 1 & pbcdata$status == 2)]
  placebo <- years[which(pbcdata$trt == 2 & pbcdata$status == 2)]
  
  print( wilcox.test(x = treated, y = placebo))
  
  boxplot( years ~ pbcdata$trt, 
           names=c("D-penicillamin","Placebo"),
           data = pbcdata,
           xlab = "Behandlingsgrupp",
           ylab = "Överlevnadstid (år)",
           main = "Överlevnad för behandlad resp obehandlad grupp")
}