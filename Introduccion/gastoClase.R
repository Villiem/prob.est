library(tidyverse)
library(stringr)
class(df)
summary(df)

nombres <- c('fecha', 'nombre', 'gasto')
colnames(df) <- nombres
view(df)

df$gasto <- gsub("\\$", "", df$gasto)
df$gasto <- as.numeric(df$gasto)

seq(1, 2000, 150)
hist(df$gasto, breaks = seq(1, 2000, 150))
summary(df$gasto)

## Vamos a hacer frecuencias relativas
df$n <- length(df$gasto)
df$frecRelativa <- df$gasto/sum(df$gasto)
df$gastoMensual <- df$gasto * 4

## De cuánto tiene que ser mi beca Vaquita para que alcance
## Al 90% de la población.

cumsum(sort(df$gasto))/sum(df$gasto)

