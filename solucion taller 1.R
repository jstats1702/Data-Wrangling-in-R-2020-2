# Ejercicio 1
# Llevar a cabo la siguiente operación aritmética. 

-((1/2 - 1/3)/(-1/6)) - 1


# Ejercicio 2
# ¿A qué equivale la suma de todos los números del 1 al 100, inclusive?

sum( 1:100 )


# Ejercicio 3
# Considere el siguientes conjuntos de datos:  
# Conjunto de datos 1 = { 4.51 ; 3.81 ; 4.82 ; 5.65 ; 5.07 ; 6.06 ; 4.94 ; 4.45 ; 5.55 ; 5.42 ; 4.51 ; 5.38 }
# Conjunto de datos 2 = { 8.43 ; 6.57 ; 9.89 ; 8.64 ; 5.73 ; 7.38 ; 9.02 ; 8.20 ; 7.76 ; 7.43 ; 7.39 ; 7.97 } 
# Calcular el promedio del conjunto de datos 1.

x <- c(4.51 , 3.81 , 4.82 , 5.65 , 5.07 , 6.06 , 4.94 , 4.45 , 5.55 , 5.42 , 4.51 , 5.38)

mean(x)


# Ejercicio 4
# Considere la información de la Pregunta 3.
# Calcular la suma de todos los valores del conjunto de datos 1 disminuidos en 5%. 
# Proporcione su respuesta utilizando todas las cifras decimales.

sum( 0.95*x )


# Ejercicio 5
# Considere la información de la Pregunta 3.
# Conformar un nuevo conjunto de datos, cuyos valores correspondan a la suma de 
# los valores del conjunto de datos 1 y el conjunto de datos 2, elemento a elemento. 
# Por ejemplo, el primer valor del nuevo conjunto de datos es 4.51 + 8.43.
# Calcular el máximo de este nuevo conjunto de datos.

z <- c(8.43 , 6.57 , 9.89 , 8.64 , 5.73 , 7.38 , 9.02 , 8.20 , 7.76 , 7.43 , 7.39 , 7.97)

max( x + z )
