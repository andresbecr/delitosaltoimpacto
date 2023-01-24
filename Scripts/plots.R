library(dplyr)
library(ggthemes)
library(ggplot2)
#Graficos y tablas
#Df COUNT
#Graficos
#Día con mas hechos
df_count <- df_2022 %>% 
  group_by(nombre_dia) %>% 
  summarize(cuenta = n())

hechos_dias = ggplot(data=df_count, mapping=aes(x=nombre_dia, y= cuenta, fill=nombre_dia)) + 
  geom_bar(stat="identity") + 
  scale_x_discrete(limits = c("LUNES", "MARTES", "MIÉRCOLES", "JUEVES", "VIERNES", "SÁBADO", "DOMINGO")) + 
  labs(x = "Día", y = "Cantidad de hechos") + 
  scale_fill_manual(values = ifelse(df_count$nombre_dia == df_count$nombre_dia[which.max(df_count$cuenta)], "red", "white"), guide=guide_legend(title="Día con más hechos")) +
  theme_fivethirtyeight()

# #Cuenta delitos
# delitos=ggplot(data=df_2022, aes(y=delito)) + geom_bar(stat="count") + theme(aspect.ratio = 2) 
# delitos
# 
# #mapa de calor
# df <- df_2022[df_2022$localidad != "99 - SIN LOCALIZACION",]
# table <- pivot_longer(df, cols = c("anio"), names_to = "anio", values_to = make.unique(c("numero_hechos")), values_fn = sum, id_cols = c("localidad"))
# 
# 
# ggplot(data=df_2022, aes(x=nombre_dia))
# 
# + geom_bar(stat="count")
# 
# 
# ggplot(data=df_2022, mapping=aes(x=as.factor(nro_del_mes))) + geom_bar() +
#   labs(x = "Número del mes", y = "Cantidad de hechos")
# 
# ggplot(data=df_2022, mapping=aes(x=nombre_dia)) + geom_bar() + 
#   labs(x = "Día", y = "Cantidad de hechos") + 
#   scale_x_discrete(limits = c("LUNES", "MARTES", "MIÉRCOLES", "JUEVES", "VIERNES", "SÁBADO", "DOMINGO"))
# 
# summary(df_2022)
# 
# unique(df_2022$nombre_dia)
# df_2022 %>%  summarize(n_distinct(nombre_dia))
# table(df_2022$nombre_dia)
# 
# df_count = as.data.frame(table(df_2022$nombre_dia))
# 
# 
# 
# 
# 
# 
# df_count = as.data.frame(table(df_2022$nombre_dia))
