# 1
# Calcular la suma del los número impares del 1 al 999, inclusive.
sum(seq(from=1,to=999,by=2))


# 2
# Considere el siguientes conjuntos de datos:
# Conjunto de datos 1 = { 4.51 ; 3.81 ; 4.82 ; 5.65 ; 5.07 ; 6.06 ; 4.94 ; 4.45 ; 5.55 ; 5.42 ; 4.51 ; 5.38 }
# Conjunto de datos 2 = { 8.43 ; 6.57 ; 9.89 ; 8.64 ; 5.73 ; 7.38 ; 9.02 ; 8.20 ; 7.76 ; 7.43 ; 7.39 ; 7.97 }
# Calcular la suma de los promedios de los conjuntos de datos.
x <- c(4.51 , 3.81 , 4.82 , 5.65 , 5.07 , 6.06 , 4.94 , 4.45 , 5.55 , 5.42 , 4.51 , 5.38)
z <- c(8.43 , 6.57 , 9.89 , 8.64 , 5.73 , 7.38 , 9.02 , 8.20 , 7.76 , 7.43 , 7.39 , 7.97)
mean(x) + mean(z)


# 3
# Usando la semilla 1111, generar 100,000 datos provenientes de una distribución Normal con media 10 (mean) y desviación estándar 1 (sd).
# Calcular el percentil 75 de este conjunto de datos.
# Expresar el resultado con tres cifras decimales. Por ejemplo, si el resultado es "37.416" solo debe debe ingresar el valor "37.416".
set.seed(1111)
x = rnorm(n = 100000, mean = 10, sd = 1)
quantile(x = x, probs = 0.75)



# 4
# Considerar la siguiente función: f (x) = 9 + 4*x - 4*x^2
# Utilizando la función optimise en R, encontrar el valor de x en el intervalo de -3 a 3 donde la función alcanza el valor máximo.
# Graficar la función y comprobar visualmente el resultado.
f = function (x) 9 + 4*x - 4*x^2
optimise(f, interval = c(-3, 3), maximum = TRUE)
windows()
curve(expr = f,from = -3, to = 3)


# 5
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable continent es "Americas", y entonces, agrupe los registros por country.
# ¿Cuál es el valor máximo de la variable lifeExp para Colombia en la base de datos así filtrada?
library(dplyr)      # manipulacion de datos
library(magrittr)
library(gapminder)  # base de datos

# cargar y adjuntar la base de datos gap
data(gapminder)

# duplicar la base de datos
gap <- gapminder

gap %>%
        filter(continent == "Americas") %>% 
        group_by(country) %>%
        summarise(minimo = max(lifeExp))