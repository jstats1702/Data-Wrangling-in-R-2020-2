################################################################################
##################### Estructuras de control ###################################
################################################################################

#-------------------------------------------------------------------------------

# if

f <- function(x, y, cond = "sumar") {
        # x y y son numeros, cond es una condicion
        if (cond == "sumar") {
                out <- x + y
        } 
        if (cond == "multiplicar") {
                out <- x * y
        }
        return( out )
}

f(x = 2, y = 5, cond = "sumar")

f(x = 2, y = 5, cond = "multiplicar")

f(x = 2, y = 5)

rm(f)

#-------------------------------------------------------------------------------

# if - else

f <- function(x) {
        if (x > 0) {
                out <- x
        } else {
                out <- -x
        }
        return( out )
}

f(1)
f(10)
f(1500)

f(-1)
f(-1500)

#-------------------------------------------------------------------------------

f <- function(x) {
        if (x > 0) {
                out <- x
        } else if (x < 0) {
                out <- -x
        } else {
                out <- "El número es 0"
        }
        return( out )
}

f(1)
f(-1)
f(0)
#-------------------------------------------------------------------------------

# for

#-------------------------------------------------------------------------------

for (x in 1:10){
        print(x)
}

#-------------------------------------------------------------------------------
x <- -5:4
x

for (a in x){
        print(a * 2)
} 


#-------------------------------------------------------------------------------

x <- matrix(data = NA, nrow = 10, ncol = 1)
x

for (i in 1:10) {
        x[i] <- i
}
x
for (i in 1:10) {
        x[i] <- i + 1
}
x
#-------------------------------------------------------------------------------

x <- matrix(data = NA, nrow = 10, ncol = 1)
x
x[1] <- 1
x[2] <- 1
x

for (i in 3:10) {
        x[i] <- x[i-2] + x[i-1]
}

x
#-------------------------------------------------------------------------------



# Fijar directorio de trabajo
# Atajo del teclado: Control  + Shift + H
getwd()
setwd("~/OneDrive - Universidad Externado de Colombia/Externado/Data Wrangling")
getwd()

carpetas <- c("Texto", "Resultados", "Gráficas", "Scripts")

crear_carpetas <- function(x){
        for (i in x) {
                dir.create(i)
        }
}

crear_carpetas(carpetas)

carpetas2 <- c("Tellez", "Cañas", "Sosa", "Lopez", "De la cruz")

crear_carpetas(carpetas2)
