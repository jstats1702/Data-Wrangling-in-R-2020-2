sinteticos <- read.delim("C:/Users/Juan Camilo/Dropbox/UE/Data Wrangling en R/codigo/sinteticos.txt")

sinteticos <- sinteticos[complete.cases(sinteticos),]

dim(sinteticos)

# 1 
# Considere la base de datos "sinteticos.txt" (100,000 registros y 4 variables), la cual se puede descargar directamente del Aula Virtual del curso.
# Remover de la base de datos todos los registros con datos faltantes. Este procedimiento da como resultado una base de datos con 96,089 registros "completos" (i.e., sin datos faltantes).
# Usando como insumo la base de datos con registros completos, calcular la mediana (percentil 50) de la variable "x".
median(sinteticos$x)

# 2
# Considere la base de datos "sinteticos.txt" (100,000 registros y 4 variables), la cual se puede descargar directamente del Aula Virtual del curso.
# Remover de la base de datos todos los registros con datos faltantes. Este procedimiento da como resultado una base de datos con 96,089 registros "completos" (i.e., sin datos faltantes).
# Usando como insumo la base de datos con registros completos, calcular el porcentaje de registros que en la variable "z" toman el valor "A".
# Expresar el resultado en puntos porcentuales (i.e., multiplicado la proporción correspondiente por 100) con tres cifras decimales.
# Por ejemplo, si el resultado de la rutina es "37.416%" solo debe debe ingresar el valor "37.416".
table(sinteticos$z)*100/96089

# 3 
# Considere la base de datos "sinteticos.txt" (100,000 registros y 4 variables), la cual se puede descargar directamente del Aula Virtual del curso.
# Remover de la base de datos todos los registros con datos faltantes. Este procedimiento da como resultado una base de datos con 96,089 registros "completos" (i.e., sin datos faltantes).
# Usando como insumo la base de datos con registros completos, encontrar el número de registros cuyo valor en la variable "x" sea superior a 13.
dim(sinteticos[sinteticos$x > 13,])

# 4
# Considere la base de datos "sinteticos.txt" (100,000 registros y 4 variables), la cual se puede descargar directamente del Aula Virtual del curso.
# Remover de la base de datos todos los registros con datos faltantes. Este procedimiento da como resultado una base de datos con 96,089 registros "completos" (i.e., sin datos faltantes).
# Usando como insumo la base de datos con registros completos, encontrar el número de registros cuyo valor en la variable "x" sea superior a 13 y cuyo valor en la variable "y" sea igual a 10.
dim(sinteticos[(sinteticos$x > 13) & (sinteticos$y == 10),])

# 5
# Considere la base de datos "sinteticos.txt" (100,000 registros y 4 variables), la cual se puede descargar directamente del Aula Virtual del curso.
# Remover de la base de datos todos los registros con datos faltantes. Este procedimiento da como resultado una base de datos con 96,089 registros "completos" (i.e., sin datos faltantes).
# Usando como insumo la base de datos con registros completos, calcular el porcentaje de registros cuyo valor en la variable "z" es igual a "A", "B" o "C", y, cuyo valor en la variable "v" es igual a "0".
# Expresar el resultado en puntos porcentuales (i.e., multiplicado la proporción correspondiente por 100) con tres cifras decimales.
# Por ejemplo, si el resultado de la rutina es "37.416%" solo debe debe ingresar el valor "37.416".
nrow(sinteticos[(sinteticos$z %in% c("A","B","C")) & (sinteticos$v == 0),])*100/96089

