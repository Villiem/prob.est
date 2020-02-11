## Primero hacemos el vector
ingreso <- c(6000,6000,6500,10000,10000,3500,7000,11000,8000,3000,5000,4500,6000,6500,4000,9000,5000,2500,3000,10000,2000,4000,3000,6000,6500,6000,3500,6500,4300,10000)
## lenght para verificar que sean 30 datos
length(ingreso)
## Sacamos el rango, para hacerlo mas sencillo hacemos un summary, observamos el maximo y el minimo, evita errores.
summary(ingreso)
rango <- 11000-2000
##  Tenemos dos opciones para la marca de clase, usar la calculadora de r o una funcion donde solamente ponemos n
## Como queremos la solucion mas universal posible haremos una funcion
f_marca_clase <- function(r,n) {
  intervalo <- r/(1+(3.3*log10(n)))
  return(intervalo)
}
## Donde r es el rango y n el total de observaciones
f_marca_clase(9000,30)
## En el ejercicio lo bajamos a 1500, ya tenemos el valor minimo y maximo por summary y el intervalo
## Es hora de hacer la tabla de frecuencias
valor_min <- 2000
valor_max <- 11000
intervalo <- 1500
clase <- seq(valor_min, valor_max, intervalo)
clase
##Ya tenemos los intervalos, podemos aprovechar para crear las marcas de clase
marca_clase <- seq(valor_min+intervalo/2, valor_max-intervalo/2, intervalo)
marca_clase
## Tenemos todo para hacer el corte y crear el dataframe
xi <- cut(ingreso, breaks = clase)
yi <- table(xi)
df <- data.frame(yi)
df
## agregamos la marca de clase
df$mc <- marca_clase
## agregamos la frecuencia acumulada, porcentual, etc.
fa <- cumsum(df$Freq)
df$fa <- fa
df
## Desconozco porque me falta un dato >/
fr <- df$Freq/sum(df$Freq)
df$fr <- fr
df
##
fra <- cumsum(fr)
df$fra <- fra
df
##
fmc <- marca_clase * df$Freq
df$fmc <- fmc
df
## media
media <- sum(fmc)/length(ingreso)
media
## mediana
v1_media <- (length(ingreso)+1)/2
media <- 5000+(((v1_media-13)/9)*1500)
media
