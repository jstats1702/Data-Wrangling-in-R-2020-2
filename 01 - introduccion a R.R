################################################################################
############################ Introduccion a R ##################################
################################################################################

#-------------------------------------------------------------------------------

# Por que R?
# - Gratis
# - Intuitivo, facil de aprender
# - Source code, personalizar tareas
# - Gran numero de librerias o paquetes
# - Popular en educacion e industria

#-------------------------------------------------------------------------------

# '#' se utiliza para escribir "comentarios"

#-------------------------------------------------------------------------------

# algunos atajos
# "Limpiar" la consola : Ctrl + L
# "Correr" codigo      : Ctrl + Intro
# Ir al script         : Ctrl + 1
# Ir a la consala      : Ctrl + 2

#-------------------------------------------------------------------------------

# Aritmetica basica
# + : suma
# - : resta
# / : division
# * : multiplicacion

2 + 2

(2 + 2) * (12 / 4)

2*(-3) + 5

#-------------------------------------------------------------------------------

# Lenguaje de programacion orientado a objetos
# El "nombre" de los objetos es muy flexible
# - Usar nombres significativos
# - Letras mayusculas y minusculas representan caracteres diferentes
# - Es permitido usar puntos (.) y guiones bajos (_)
# - No usar nombres que inicien con numeros
# - No usar nombres ya definidos con anterioridad o y reservados
# - Por ejemplo, ya estan reervados: 
#   pi, exp, c, t, seq, sum, prod, mean, sd, plot, ...

# usar '=' o '<-' para definir objetos
# cuidado! Se recomienda no "sobre-escribir" objetos

x <- 13

yrg = 2.7

#-------------------------------------------------------------------------------

# concatenar valores
x <- c(3, 7, 1, 4, 2)

# clase y estructura de un objecto
class(x)

# secuencias de numeros
y <- 1:5

z <- seq(from = 2, to = 10, by = 2)

v <- rep(1, 5)  # v <- rep(x = 1, times = 5)

# longitud de un objecto
length(x)

# algunas operaciones básicas
x + 2

x^2  # x**2

sqrt(x)  # raiz cuadrada

exp(x)  # e^x

x + y

y / z

# remover objetos
rm(yrg, x, y, z, v)

# algunas funciones básicas
activos <- c(3473.2, 3016.6, 620.9, 2513, 1943.4, 2816, 2196.8, 2611.5, 331.1, 412.5)

class(activos)

length(activos)

min(activos)

max(activos)

sum(activos)

prod(activos)

mean(activos)

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------