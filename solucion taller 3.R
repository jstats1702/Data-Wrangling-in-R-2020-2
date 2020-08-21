# base de datos sintetica
setwd("C:/Users/Juan Camilo/Dropbox/UE/Data Wrangling en R/codigo")

n <- 100000
set.seed(1)
x <- round(rnorm(n, 10, 1), 3)
set.seed(1)
y <- rpois(n, 10)
set.seed(1)
z <- apply(rmultinom(n, size = 1, prob = rep(1,5)/5), MARGIN = 2, FUN = function(x) which(x!=0))
z <- LETTERS[z]
set.seed(1)
v <- rbinom(n, 1, 0.5)

datos <- data.frame(x,y,z,v)
indices <- matrix(runif(n*ncol(datos), 0, 1) < 0.01, n, ncol(datos))
datos[indices] <- NA

write.table(x = datos, file = "sinteticos.txt", quote = F, append = F, sep = "\t", row.names = F, col.names = T, )

dim(datos)


#1
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# ¿Por qué clase de objetos está constituido la variable x?
class(datos$x)

#2
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# ¿Por qué clase de objetos está constituido la variable y?
class(datos$y)

#3
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# ¿Por qué clase de objetos está constituido la variable z?
class(datos$z)

#4
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# ¿Por qué clase de objetos está constituido la variable x?
class(datos$v)

#5
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas). 
# Calcular el porcentaje de registros con por lo menos algún dato faltante.
100*sum(!complete.cases(datos))/nrow(datos)

#6
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# Calcular el número total de datos faltantes.
sum(is.na(datos))

#7
# Importar en R la base de datos denominada sinteticos.txt disponible en el aula virtual. Esta base de datos contiene 100,000 registros (filas) y cuatro variables (columnas).
# Crear un conjunto de datos únicamente con los registros que tienen todos los datos completos y usando este nuevo conjunto de datos calcular el promedio de x. 
# Reportar el resultado utilizando dos cifras decimales.
datos.full <- datos[complete.cases(datos), ]
mean(datos.full$x)
