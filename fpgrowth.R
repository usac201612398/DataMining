library(readxl)
library(arules)
#data <- read_excel("C:\\Users\\Brandon Portillo\\Downloads\\base-de-datos-violencia-intrafamiliar-ano-2024_v3.xlsx")

#data_fp <- data[, c("HEC_MES", "HEC_TIPAGRE","HEC_DEPTOMCPIO","HEC_DEPTO", "VIC_EDAD", "VIC_ESCOLARIDAD", "VIC_EST_CIV", "VIC_GRUPET", "VIC_SEXO")]

#reglas_fp <- fim4r(data_fp, method="fpgrowth", target ="rules", supp =.2, conf=.5)

#rf <- as(reglas_fp, "data.frame")

#data_fp_16 <- subset(data_fp, HEC_DEPTO == "16")[ , !(names(data_fp) %in% c("HEC_DEPTO")) ]

# Ejecuta fim4r
#reglas_fp_16 <- fim4r(data_fp_16, method="fpgrowth", target="rules", supp=0.2, conf=0.5)

#rf <- as(reglas_fp_16, "data.frame")
#print(rf)
#data <- read_excel("C:\\Users\\Brandon Portillo\\Downloads\\base-de-datos-violencia-intrafamiliar-ano-2024_v3.xlsx")

#data_fp <- data[, c("HEC_MES", "HEC_TIPAGRE","HEC_DEPTOMCPIO","HEC_DEPTO", "AGR_EDAD", "AGR_ESCOLARIDAD", "AGR_EST_CIV", "AGR_DEDICA", "AGR_SEXO","VIC_REL_AGR")]

#reglas_fp <- fim4r(data_fp, method="fpgrowth", target ="rules", supp =.2, conf=.5)

#rf <- as(reglas_fp, "data.frame")

#data_fp_16 <- subset(data_fp, HEC_DEPTO == "16")[ , !(names(data_fp) %in% c("HEC_DEPTO")) ]

# Ejecuta fim4r
#reglas_fp_16 <- fim4r(data_fp_16, method="fpgrowth", target="rules", supp=0.2, conf=0.5)

#rf <- as(reglas_fp_16, "data.frame")
#print(rf)

data <- read_excel("C:\\Users\\Brandon Portillo\\Downloads\\base-de-datos-violencia-intrafamiliar-ano-2024_v3.xlsx")

data_fp <- data[, c("HEC_MES", "HEC_TIPAGRE","HEC_DEPTOMCPIO","HEC_DEPTO", "VIC_EDAD", "VIC_ESCOLARIDAD", "VIC_EST_CIV", "VIC_GRUPET", "VIC_SEXO","VIC_REL_AGR")]


data_fp_vmujer <- subset(data_fp, VIC_SEXO == "2")[ , !(names(data_fp) %in% c("VIC_SEXO")) ]

# Ejecuta fim4r
reglas_fp_vmujer <- fim4r(data_fp_vmujer, method="fpgrowth", target="rules", supp=0.2, conf=0.5)

rf <- as(reglas_fp_vmujer, "data.frame")
print(rf)