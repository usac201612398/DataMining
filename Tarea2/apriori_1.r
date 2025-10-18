library(arules)
library(readxl)

datos <- read_excel("C:/Users/Brandon Portillo/Desktop/Nueva carpeta/4to Trimestre/DataMining/graduados-superior-2023.xlsx")
datos_trans <- as(datos, "transactions")

datos <- datos[, -1]
#datos_trans2 <- as(datos, "transactions")
#reglas_2 <- apriori(datos_trans2, parameter = list(support=0.2, confidence = 0.5)) 
#inspect(reglas_2[0:44])

# Verificar cuántos registros tienen la edad igual a -7971
num_registros_negativo_7971 <- sum(datos$Edad == -7971, na.rm = TRUE)

# Eliminar los registros donde 'Edad' es igual a -7971
datos <- datos[datos$Edad != -7971, ]

# Verifica cuántos registros fueron eliminados
cat("Se eliminaron", num_registros_negativo_7971, "registros con edad igual a -7971.\n")

# Resumen para verificar la columna 'Edad' después de eliminar
summary(datos$Edad)

datos_filtrados1 <- datos[datos$Departamento == "Guatemala" , ]
datos_filtrados1 <- datos_filtrados1[, -2]
datos_trans3 <- as(datos_filtrados1, "transactions")
reglas_3<- apriori(datos_trans3, parameter = list(support=0.2, confidence = 0.5))
#inspect(reglas_3[0:41])

datos_filtrados2 <- datos[datos$Grupos_Quinquenales == "25 a 29" , ]
datos_filtrados2 <- datos_filtrados2[, -6]
datos_trans4 <- as(datos_filtrados2, "transactions")
reglas_4<- apriori(datos_trans4, parameter = list(support=0.2, confidence = 0.5))
#inspect(reglas_4[0:44])

datos_filtrados3 <- datos[datos$Sexo == "Mujer" , ]
datos_filtrados3 <- datos_filtrados3[, -4]
datos_trans5 <- as(datos_filtrados3, "transactions")
reglas_5<- apriori(datos_trans5, parameter = list(support=0.15, confidence = 0.4))
inspect(reglas_5[0:67])
