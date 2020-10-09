un_experimento <- sample(0:1, 10, replace = TRUE)
simulacion <- replicate(10000, sample(0:1, 10, replace = TRUE), simplify = FALSE)

un_experimento
sum(un_experimento)

numero_resultados <- sapply(simulacion, sum)

numero_resultados

hist(numero_resultados)

table(numero_resultados)
numero_resultados[numero_resultados %in% c(0:1,9:10)]


