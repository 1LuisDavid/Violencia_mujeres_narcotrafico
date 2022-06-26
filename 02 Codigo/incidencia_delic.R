####### Narcotráfico y violencia vs mujeres -------

Sys.setlocale("LC_ALL", "es_ES.UTF-8") # Prevenir problemas con caracteres especiales
options(scipen=999) # Prevenir notación científica

#### Librerías  ------

library(readr)
library(janitor)
library(tidyverse)
library(ggthemes)  
library(hrbrthemes)

#### Datos nueva metodología ------

dfc_nm <-  read_csv("01 Datos/IDEFC_NM_abr22.csv", 
                locale = locale(encoding = "ISO-8859-1"))
dfc_nm <- clean_names(dfc_nm) 


dm_nm <- read_csv("01 Datos/IDM_NM_abr22.csv", 
                         locale = locale(encoding = "ISO-8859-1"))
dm_nm <- clean_names(dm_nm) #256 MB


vfc_nm <- read_csv("01 Datos/IDVFC_NM_abr22.csv", 
                           locale = locale(encoding = "ISO-8859-1"))
vfc_nm <- clean_names(vfc_nm)


dff_nm <- read_csv("01 Datos/IDEFF_abr22.csv", 
                       locale = locale(encoding = "ISO-8859-1"))
dff_nm <- clean_names(dff_nm)
#### Datos metodología anterior------

dfc_ma <- read_csv("01 Datos/IDEFC_jun2021.csv", 
                   locale = locale(encoding = "ISO-8859-1"))
dfc_ma <- clean_names(dfc_ma)


dm_ma <- read_csv("01 Datos/IDM_jun2021.csv", 
                  locale = locale(encoding = "ISO-8859-1"))
dm_ma <- clean_names(dm_ma)


vfc_ma <- read_csv("01 Datos/IDVFC_jun2021.csv", 
                   locale = locale(encoding = "ISO-8859-1"))
vfc_ma <- clean_names(vfc_ma)


gcrim <- read_csv("01 Datos/137_BaseGruposCriminalesJR2019CIDEPPD.csv") #https://politicadedrogas.org/site/OGrafica/id/137.html 

gcrim <- clean_names(gcrim)


#### Exploración de datos --------

names(dfc_nm)
summary(dfc_nm)

names(dm_nm)
summary(dm_nm)

names(vfc_nm)
summary(vfc_nm)

names(dff_nm)
summary(dff_nm)



unique(dfc_nm$tipo_de_delito)
unique(vfc_nm$tipo_de_delito)
unique(dm_nm$tipo_de_delito)
unique(dff_nm$concepto)

# Una pregunta sería: ¿hay correlación entre 
# el aumento de delitos de crimen organizado y violencia hacia las mujeres?






