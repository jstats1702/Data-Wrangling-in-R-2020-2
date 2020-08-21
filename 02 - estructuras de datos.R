################################################################################
################################ Matrices ######################################
################################################################################

#-------------------------------------------------------------------------------

# definicion de matrices
C <- matrix(data = c(1, 3, 2, -1, 2, 1, 4, -1, -1), nrow = 3, ncol = 3)

D <- matrix(data = c(1, 3, 2, -1, 2, 1, 4, -1, -1), nrow = 3, ncol = 3, byrow = TRUE)

# ¿por defecto la matriz se llena por filas o columnas?

# clase de objeto
class(C)

# ¿la matriz C es simetrica?
isSymmetric(C)

# dimension
dim(C)

# numero de filas
nrow(C)

# numero de columnas
ncol(C)

# operaciones basicas
C + 2

2 * C

C / 2

C^2

sqrt(C)

# traspuesta de C
t(C)

# traza de una matriz
sum(diag(C))

# determinante de una matriz
det(C)

# inversa de una matriz
solve(C)

# matriz identidad
I3 <- diag(rep(1, 3))

# vector columna
a <- matrix(data = c(1,2,3), nrow = 3, ncol = 1)

# otra manera de definir un vector columna
a <- as.matrix(c(1,2,3))

# proponer dos matrices de tamano 2 x 3 con nombres A y B
A <- matrix(data = c(7,3,4,6,7,2), nrow = 2, ncol = 3, byrow = TRUE)

B <- matrix(data = c(1,2,4,5,6,7), nrow = 2, ncol = 3)

# operaciones basicas entre matrices
A + B

A * B

A / B

# multiplicacion de matrices
A %*% C

A %*% I3

I3 %*% a

#-------------------------------------------------------------------------------

ventas <- c(151.4, 134.2, 222.9, 102.5, 97.6, 115.7, 92.2, 113.1, 217.5, 249.9 )

ganancias <- c(42, 35, 24.1, 24.2, 21.9, 27.8, 16.6, 24.9, 45.2, 17.1)

activos <- c(3473.2, 3016.6, 620.9, 2513, 1943.4, 2816, 2196.8, 2611.5, 331.1, 412.5)

valor <- c(229.8, 200.5, 409.9, 306.6, 274.4, 149.2, 231.9, 141.3, 752, 171.9)

pais <- c("China", "China", "US", "US", "US", "China", "US", "China", "US", "Japan")

A <- matrix(data = c(ventas, ganancias), nrow = 10, ncol = 2, byrow = FALSE) 

B <- matrix(data = c(activos, valor), nrow = 10, ncol = 2) 

C <- matrix(data = c(ventas, ganancias, activos, valor), nrow = 10, ncol = 4, byrow = F)

# clase de objetos
class(ventas) 

class(pais)

class(A)

# unir A y B por columnas
FG10 <- cbind(A, B)

# unir A y B por filas
rbind(A, B)

# remover A y B
rm(A, B)

# obtener un elemento
FG10[2, 1]

# obtener filas
FG10[1, ]

FG10[c(1, 2, 3), ]

FG10[1:3, ]

FG10[6:10, ]

# obtener columnas
FG10[ , 1]

FG10[ , c(1, 2)]

FG10[ , 1:2]

FG10[6:10, 4]

FG10[c(1,10), c(1,4)]

FG10[ , -c(4)]

FG10[ , -c(3,4)]

rm(FG10)

#-------------------------------------------------------------------------------

################################################################################
############################# data frames ######################################
################################################################################

# bases de datos (admite variables cualitativas y cuantitativas)
# filas    : individuos
# columnas : variables
FG10 <- data.frame(pais, ventas, ganancias, activos, valor)

# cambiar un solo nombre de la base de datos
colnames(FG10)[colnames(FG10) == "pais"] <- "country"

# asignar nombres a las variables
colnames(FG10) <- c("country", "sales", "profits", "assets", "value")

# clase de objeto
class(FG10)

# dimension de la base de datos
dim(FG10)

# numero de individuos (tamano de la muestra)
nrow(FG10)

# numero de variables
ncol(FG10)

# obtener variables
FG10$sales

FG10[ , c(1, 2)]

FG10[ , c("country","sales")]

# obtener individuos
FG10[1, ]

FG10[c(1, 2, 6, 8), ]

# hay datos faltantes?
is.na(FG10)

# toda la tabla esta completa?
any( is.na(FG10) )

# reemplazar algunos valores
FG10[2, 3] <- NA

FG10[5, ] <- NA

is.na(FG10)

any(is.na(FG10))

# identificar registros completos
indices_completos <- complete.cases(FG10)

class(indices_completos)

as.numeric(indices_completos)

sum(as.numeric(indices_completos))

sum(indices_completos)

# base de datos completa
FG10.full <- FG10[indices_completos, ]

any(is.na(FG10.full))

# base de datos incompleta
indices_incompletos <- !indices_completos

FG10[indices_incompletos, ]

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------