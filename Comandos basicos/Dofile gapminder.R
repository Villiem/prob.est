## Analisis de datos con R, empieza lo weno 
## Esta es una de las cosas mas utiles e importantes para los economistas, vamos por partes
## Describir los tipos de datos, Int, Double, Boolean, factor, String
## Describir operadores logicos ==, >=, <=, !=, : , || , &&, %>%
## Explicar que es un paquete de datos, tidyverse y Dplyr 
## Funciones basicas: Select, Filter, Arrange, Group_by



install.packages(c("tidyverse", "gapminder"))
library(gapminder)
library(tidyverse)
gapminder <- gapminder
View(gapminder)
### Observamos las columnas de nuestro dataframe, antes de andar triturando datos tenemos que acercarnos
str(gapminder)
summary(gapminder)

gapminder %>% select (country, pop, year,)
## Conocemos una manera de selecionar, y si queremos 50 columnas?

gapminder %>% filter (country == "Mexico")
gapminder %>% filter(country =="Mexico", year = 2007)
## Si queremos muchos años
## Completa el comando de abajo con & (and) o | (o)
## gapminder %>% filter(country =="Mexico, year = 2007 (operador) year ==1952)
gapminder_df %>% filter (country == "Mexico", year == c(2002, 2007))




## Completa el comando de abajo con & (and) o | (o)
## gapminder %>% filter(country =="Mexico, year = 2007 (operador) year ==1952)

## ejercicio crear un df con todos los paises del TLC despues de 1994
## Opciones de operadores
gapminder %>% filter(country != "Mexico")

## ggplot(data) + geom_line(aes(x=,y=))

gapminder %>% arrange (lifeExp)
## Se pueden utilizar junto a otras expresiones y desc

gapminder %>% filter (continent == "Americas", year == 2007) %>% arrange(desc(gdpPercap))

## Agrupamos, y creamos una nueva variable llamada media_esperanza que es la media de la esperanza de vida
gapminder %>% group_by(year, continent) %>% summarise(media_esperanza = mean(lifeExp))

## Que tal si queremos saber la esperanza media de vida de cada continente en cierto anio?
gapmider %>% group_by (continent) %>% filter (year == 2007) %>% summarise(media_ingreso = mean(gdpPercap)
                                                                          
## Lo importante no es memorizar los comandos ni copiar y pegar, es entender que hace cada uno y moldearlo a las necesidades



