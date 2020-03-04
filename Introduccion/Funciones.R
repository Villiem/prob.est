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



