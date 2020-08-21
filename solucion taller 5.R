# 1
# La secuencia de Fibonacci es una sucesión definida por recurrencia. 
# Esto significa que para calcular un término de la sucesión se necesitan los términos que le preceden. 
# A continuación se presentan algunos elementos de la secuencia:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, . 
# Esta secuencia fue descrita por el matemático italiano Leonardo de Pisa (Fibonacci) 
# quien nació en 1170 y murió en 1240, mucho antes de ser conocida en occidente, 
# la sucesión de Fibonacci ya estaba descrita en la matemática india, en conexión con la prosodia sánscrita. 
# La sucesión tiene múltiples aplicaciones en informática y buena parte de la fascinación que suscita se 
# debe a que su proporción se manifiesta también en la naturaleza, como en la disposición de las ramas en los árboles, 
# en la de las hojas en los tallos y en el crecimiento en espiral de las conchas de los caracoles, entre otros. 
# La siguiente función en R, llamada fib, permite calcular un valores específicos de la Secuencia de Fibonacci:
# Obtener el valor del término número 25 de la secuencia.
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
fib <- function(n) {
        if (n == 1) {
                return(0)
        }
        if(n == 2) {
                return(1)
        }
        if(n > 2) {
                return( fib(n - 1) + fib(n - 2) )
        }
}

fib(25)

# 2
# Obtener la suma de los términos 10 a 20 de la secuencia.
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
fib(10)+fib(11)+fib(12)+fib(13)+fib(14)+fib(15)+fib(16)+fib(17)+fib(18)+fib(19)+fib(20)

# 3
# Considerar la siguiente función: f (x) = 1 + 2*x - x^2
# Utilizando la función optimise en R, encontrar el valor de x en el intervalo de -1 a 3 donde la función alcanza el valor máximo.
# Graficar la función y comprobar visualmente el resultado.
# f = function (x) 1 + 2*x - x^2
optimise(f, interval = c(-1, 13), maximum = TRUE)
windows()
curve(expr = f,from = -1, to = 3)

# 4
# Usando la semilla 1234, generar 10,000 datos provenientes de una distribución Normal con media 10 (mean) y desviación estándar 1 (sd).
# Calcular el percentil 25 de este conjunto de datos.
# Expresar el resultado con tres cifras decimales. Por ejemplo, si el resultado es "37.416" solo debe debe ingresar el valor "37.416".
set.seed(1234)
x = rnorm(n = 10000, mean = 10, sd = 1)
quantile(x = x, probs = 0.25)