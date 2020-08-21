# 1 Calcular la traza de una matriz cuadrada de tamaño 10 x 10, cuyas entradas son los números enteros consecutivos del 1 al 100, dispuestos por filas.
A <- matrix(data = 1:100, nrow = 10, ncol = 10, byrow = T)
sum(diag(A))

# 2 Crear una matriz cuadrada de tamaño 10 x 10, cuyas entradas son los números enteros consecutivos del 1 al 100, dispuestos por columnas.
#   Sumar los valores de todos los elementos de las columnas 1, 5, y 10.
sum((0:499)*2 + 1)

# 3 Crear una secuencia con los números impares del 1 al 999, es decir, 1, 3, 5, 7, ... , 999. Calcular la suma de todos los elementos de esta secuencia.
data("USArrests")
nrow(USArrests)

#4 Considere la base de datos USArrests. Esta base de datos está incorporada automáticamente en R y contiene la información de crímenes violentos en Estados Unidos en 1975.  Esta base de datos tiene cuatro variables:
#  1. Murder: tasa de asesinatos cada 100,000 habitantes.
#  2. Assault: tasa de asaltos cada 100,000 habitantes.
#  3. UrbanPop: porcentaje de población urbana.
#  4. Rape: tasa de violaciones cada 100,000 habitantes.
#  Para acceder a esta base de datos, solo debe ejecutar el siguiente comando:
#  data("USArrests")
#  Observe que esto creará un objeto tipo data frame en el ambiente global con el nombre USArrests.
#  Calcular el número de registros (filas) de esta base de datos.
mean(USArrests$UrbanPop)

#5 Acceder a la información de la variable UrbanPop y calcular el promedio del porcentaje de población urbana.
A <- matrix(data = 1:100, nrow = 10, ncol = 10, byrow = F)
sum(A[,c(1,5,10)])
