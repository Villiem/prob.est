## Analisis de datos con R, empieza lo weno 
## Esta es una de las cosas mas utiles e importantes para los economistas, vamos por partes
## Describir los tipos de datos, Int, Double, Boolean, factor, String
## Describir operadores logicos ==, >=, <=, !=, : , || , &&, %>%
## Explicar que es un paquete de datos, tidyverse y Dplyr 
## Funciones basicas: Select, Filter, Arrange, Group_by



## antes de cualquier cosa tenemos que checar nuestro espacio de trabajo
getwd()
## para cambiar setwd()
## Recordar algunas funciones basicas y los operadores logicos
## al igual que los conjuntos
install.packages(c("gapminder", "tidyverse"))
library(tidyverse)
library(gapminder)

gapminder <- gapminder
View(gapminder)
## Vemos un dataframe muy interesante
str(gapminder)
## Select selecciona las columnas, podemos utilizar el nombre o el numero, ejemplo
gapminder %>% select(country, year, gdpPercap)
## tambien acepta auxiliares como starts_with, ends_with, as_data_frame
## Commo seleccionarias 20 variables, las primeras 50, los impares o los pares?
## FIlter se aplica a los renglones, no a las columnas, selecciona uno o varios valores especificos, ademas se puede usar con operadores logicos

gapminder %>% filter(year == 2007)
gapminder %>% filter (year >= 1995 )
gapminder %>% filter(country == "Mexico")
gapminder %>% filter(country != "Mexico")
gapminder %>% filter (year == 2007 | year == 1952)
gapminder %>% filter(year == c(2007, 1952))
gapminder %>% filter (year == 2007 & country == " Mexico")
gapminder %>% filter (continent == "Americas", year == 2007) %>% arrange(desc(gdpPercap))

## Ejercicio hacer un df con los paises del TLC despues de 1994
## Niguna de las cosas se cambia permamenteme hasta que le asignemos con <- 

gapminder2007 <- gapminder %>% filter(year == 2007)
##Utilizar arrange, nos permite acomodar de mayor a menor viceversa
gapminder %>% arrange(lifeExp) ## De menor a mayor
gapminder %>% arrange(desc(lifeExp)) ## de Mayor a menor


#Mutate transforma variables
gapminder %>% mutate( pob/1000000)
gapminder %>% mutate (pib = gpdPercap * pob)
## si la variable no existe la crea


## Group_by, agrupa por algo duuuh
gapminder %>% group_by(year)
gapminder %>% group_by(year, continent)

## preguntas a la clase
## Como se cuantos paises hay en cada contiente?
## length (unique(gapminder$country))



## Agrupamos, y creamos una nueva variable llamada media_esperanza que es la media de la esperanza de vida
## Summarise reduce muchos valores a uno solo, como la media es igual para todos de todos los datos, solo obtenemos uno
gapminder %>% group_by(year, continent) %>% summarise(media_esperanza = mean(lifeExp))

## Que tal si queremos saber la esperanza media de vida de cada continente en cierto anio?
gapmider %>% group_by (continent) %>% filter (year == 2007) %>% summarise(media_ingreso = mean(gdpPercap)
                                                                          
## Lo importante no es memorizar los comandos ni copiar y pegar, es entender que hace cada uno y moldearlo a las necesidades



