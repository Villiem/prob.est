## Funciones en R

mi_primera_funcion <- function(n){
  n1 <- n+1
  return(n1)
}

mi_primera_funcion(2)











chicharronera <- function(a,b,c){
  if(a == 0)
    print("Valio madre")
  else if((b^2) < (4*a*c))
    print("No puedes andar en la vida asi")
  x1 <- (-b + sqrt(b^2-4*a*c))/(2*a)
  x2 <- (-b - sqrt(b^2-4*a*c))/(2*a)

  return(c(x1,x2))
}

chicharronera(1,2,1)
chicharronera(1,3,2)
chicharronera(1,2,3)
chicharronera(0,2,1)




factoria2 <- function(n){
  if(n == 1)
    return(1)
 res <- n * factoria2(n-1)
 return(res)
}


factoria2(5)


mean
sample

## Una función básica consta de 3 partes
# 1. parámetros
# 2. Cuerpo
# 3. Regresa

uno_mas_otro <- function(a, b){
  a + b
}

uno_mas_otro(1, 2)

uno_a_la_potencia <- function(a, b){
  a ^ b
}

## Factorial n! n-1! * n-2! *.... 0
10! = 10 * 9!
9! = 9 * 8!
  
 
factorial2 <- function(a){
  if(a == 0){
    return(1)
  }
  a * factorial2(a - 1)
}

operacion1 <- function(a){
  x <- mean(a)
  x + 2
}

x <- c(1,2,3)
a <- c(4,5,6)
operacion1(x)


chicharronera <- function(a, b, c){
  x <-  (b ^ 2) - (4 * a * c)
  z <- 2 * a
  if (x >= 0) {
    x1 <- ((-b) + sqrt(x))/z
    x2 <- ((-b) - sqrt(x))/z
    return(c(x1, x2))
  }
  print('es negativo el resultado')
}

chicharronera(2,-4,4)
chicharronera <- function(a,b,c) {
  p1 <- (b^2) - (4 * a * c)
  p2 <- 2 * a
  p3 <- -b
  if (p1 < 0 ) {
    print('no tiene solucion real')
    stop()
  }
  x1 <- (p3 + sqrt (p1)) / p2
  x2 <- (p3 - sqrt (p1)) / p2
  return (c (x1,x2))
}



chicharronera(1, -5, 6)
chicharronera(2,-4,4)



