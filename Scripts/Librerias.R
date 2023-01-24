

#Función 
install_and_load_packages <- function(packages) {
# Revisar si paquetes están instalados
not_installed <- packages[!(packages %in% installed.packages()[,"Package"])]
# Instalar paquetes que no están instalados
if (length(not_installed) > 0){
  install.packages(not_installed, dependencies = TRUE)
}
# Cargar paquetes
for (package in packages) {
  library(package, character.only = TRUE)
}
}

#Paquetes necesarios
packages <- c("dplyr", "ggplot2", "lubridate", "tidyr", "kableExtra", "flextable", "filesstrings", "reticulate",
              "purrr", "readr", "extrafont", "stringr", "ggmap", "readxl", "leaflet", "mapview", "purrr", "odbc", "ggthemes")

install_and_load_packages(packages)
rm(packages, install_and_load_packages)
loadfonts(device = "win")

#