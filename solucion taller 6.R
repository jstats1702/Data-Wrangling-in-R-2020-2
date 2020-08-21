library(dplyr)      # manipulacion de datos
library(magrittr)
library(gapminder)  # base de datos

# cargar y adjuntar la base de datos gap
data(gapminder)

# duplicar la base de datos
gap <- gapminder


# 1
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable country sea "United States".
# ¿Cuántos registros tiene esta base de datos así filtrada?
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
gap %>% 
        filter(country == "United States") %>%
        nrow()


# 2
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable year se encuentre entre 2000 y 2010.
# ¿Cuántos registros tiene esta base de datos así filtrada?
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
gap %>% 
        filter(between(year, 2000, 2010)) %>%
        nrow()


# 3
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable year es igual a 1997, y además, el valor en la variable continent es "Americas".
# ¿Cuántos registros tiene esta base de datos así filtrada?
# Expresar el resultado sin separador de miles (","). Por ejemplo, si el resultado es "25,748" solo debe debe ingresar el valor "25748".
gap %>% 
        filter(year == 1997 & continent == "Americas") %>% 
        nrow()

# 4
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable continent es "Americas", y entonces, agrupe los registros por country.
# ¿Cuál es el valor mínimo de la variable lifeExp para Colombia en la base de datos así filtrada?
gap %>%
        filter(continent == "Americas") %>% 
        group_by(country) %>%
        summarise(minimo = min(lifeExp))


# 5
# Considere la base de datos gapminder disponible en el paquete gapminder. Esta base de datos contiene 1704 registros y 6 variables.
# Usando el paquete dyplr, conforme una base de datos con todos los registros cuyo valor en la variable continent es "Americas", y entonces, agrupe los registros por country.
# ¿Cuál es el valor promedio de la variable lifeExp para Colombia en la base de datos así filtrada?
gap %>%
        filter(continent == "Americas") %>% 
        group_by(country) %>%
        summarise(promedio = mean(lifeExp))
