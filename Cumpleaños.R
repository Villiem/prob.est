## Probabilidad de cumples

n <- 50
cumples <- sample(1:365, n, replace = T)
any(duplicated(cumples))
mean(duplicated(cumples))



mismo_cumpleaños <- function(n){
  cumples <- sample(1:365, n, replace = T)
  any(duplicated(cumples))
}
mismo_cumpleaños(50)


resultados <- replicate(b, mismo_cumpleaños(50))
head(resultados)
mean(resultados)

probabilidades <- function(n, b = 10000){
  resultados <- replicate(b, mismo_cumpleaños(n))
  mean(resultados)
}
probabilidades()
n <- seq(1,60)
probs <- sapply(n, probabilidades)
view(probs)


library(tidyverse)
qplot(n, probs)



