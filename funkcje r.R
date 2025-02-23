
pole_kola <- function(n) {
  x <- n * n  
  return(pi * x)  
}

podatek=function(kwota,rodzaj){
  if(rodzaj=="liniowy"){
    return(kwota*0.19)
  }
  else if(rodzaj=="ogólny"&&kwota>85528){
    return(14839+0.32*(kwota-85528))
  }
  else{
    return((kwota*0.18)-556)
  }
}
  