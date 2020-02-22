##Cuarta clase de R

## Creamos el vector de ingresos, repetimos los datos un cierto numero de veces
vector_ingresos <- rep(c(400,500,550,600,700,800,900,1000,1200,1500), times = c(4,5,1,3,5,2,3,3,1,1))

vector_ingresos
## vemos el histograma, la media, el resumen y la grafica boxplot
hist(vector_ingresos )
mean(vector_ingresos)
summary(vector_ingresos)
boxplot(vector_ingresos)

## Para entender como funciona un outlier, creamos una representacion de la altura.
alturas<- c(150:190)
mean(alturas)
summary(alturas)
boxplot(alturas)
alturas<-c(alturas,400) ## Agregamos el outlier, no podemos tener a alguien que mida 4 metros.
boxplot(alturas)
mean(alturas)
summary(altur)
alturas <- c(155:175)
summary(alturas)
alturas<- c(alturas,400)
summary(alturas)
alturas <- c(alturas, 900)
summary(alturas)
boxplot(alturas)

## Los mismos vectores que antes, pero individual
xi<-c(400,500,550,600,700,800,900,1000,1200,1500)
yi<-c(4,5,1,3,5,2,3,3,1,1)

df<-data.frame(xi,yi) #un data frame es una serie de vectores columna
##renglones 
view(df)
View(df)
df[,]##que valor quiero sacar de una sistema matricial todos los renglos
##todas las columnas 
df[1,] ##selecciona de esta matriz el primer renglon n columnas
df[,1]##selecciona de esta matriz todas los renglones de la primera col
df[5,1] #quiero el renglon 5 de la columna 1
df[5,] # quinto renglon
df1<- data.frame (xi,yi)

df1[5,1]<-700
df1

str(df1)
##ETIQUETAS 
##CADENAS DE CLASIFICACIÓN

##ESTRUCUTURA, TIPO DE Ddatos

$ ##ME PERMITE MOVERME DENTRO DE UN OBJETO 
df1$xi 

df1$fa <- cumsum(df1$yi)  ##DAME LA SUMA ACUMULADA DE yi RECORDAR
## QUE ESTAMOS TRABAJANDO DENTRO DE UN OBJETO
View(df1)  
df1$fr <- df1$yi/sum(df1$yi)
View(df1)

df1$fra <- cumsum(df1$fr)
View(df1)

media_ingre<- c(sum(xi*yi)/sum(yi))
View(media_ingre)

sum(df1$xi * df1$yi)/sum(df$yi)


summary(vector_ingresos)
df1$xiyi <- df$xi -712.5

