install.packages(c("gapminder","tidyverse","gganimate","png","gifski"))
library(gapminder)
library(tidyverse)
library(gganimate)
library(gifski)
library(png)
gapminder <- gapminder
gapminder2007 <- filter(gapminder, year == 2007)
ggplot(gapminder2007) + geom_point(aes(x = gdpPercap , y = lifeExp))
ggplot(gapminder2007) + geom_point(aes(x = gdpPercap, y = lifeExp, color = continent))
ggplot(gapminder2007) + geom_point(aes(x = gdpPercap, y = lifeExp, color = continent)) + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida")


ggplot(gapminder2007) + geom_point(aes(x = gdpPercap, y = lifeExp, color = continent, size = pop)) + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic()
ggplot(gapminder2007) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic()
ggplot(gapminder2007) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic() + guides (size = FALSE)
ggplot(gapminder2007) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic() + guides (size = FALSE) + scale_x_log10()
ggplot(gapminder2007) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic() + guides (size = FALSE) + scale_x_log10(breaks = c(400,4000,25000))
ggplot(gapminder2007) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic() + guides (size = FALSE) + scale_x_log10(breaks = c(400,4000,25000)) + facet_wrap(~continent)

animado<-ggplot(gapminder) + aes(x = gdpPercap, y = lifeExp, color = continent, size = pop) + geom_point() + labs(title = "A mayor ingreso mayor esperanza de vida", subtitle = "Para la clase de estadistica", x = "Pib per capita", y = "Esperanza de vida") + theme_classic() + guides (size = FALSE) + scale_x_log10(breaks = c(400,4000,25000)) + transition_time(year) + ease_aes('linear')
animado
anim_save(filename="clase.gif",
animation = animado,
width=2100,
height=1500,
res=400)
