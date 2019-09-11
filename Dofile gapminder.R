## Analisis de datos con R, empieza lo weno 
## Esta es una de las cosas mas utiles e importantes para los economistas, vamos por partes
## Describir los tipos de datos, Int, Double, Boolean, factor, String
## Describir operadores logicos ==, >=, <=, !=, : , || , &&, %>%
## Explicar que es un paquete de datos, tidyverse y Dplyr 
## Funciones basicas: Select, Filter, Arrange, Group_by
## Se puede ejemplificar con una base ficticia de los estudiantes 

## Cuando me asegure que entienden pasamos al codigo

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
## gapminder %>% filter(country =="Mexico, year = 2007 year ==1952)
## usar vectores
## ejercicio crear un df con todos los paises del TLC despues de 1994
## Opciones de operadores
gapminder %>% filter(coutry != "Mexico")
## usar vectores
## ggplot(data) + geom_line(aes(x=,y=))

gapminder %>% arrange (lifeExp)
## Se pueden utilizar junto a otras expresiones y desc

## gapminder %>% filter (continent == "Americas", year == 2007) %>% arrange(desc(gdpPercap))


## gapminder %>% group_by(year, continent) %>% summarise(media_esperanza = mean(lifeExp))
## gapminder(filtrame) %>% spread(key = year,value = pop)

##
