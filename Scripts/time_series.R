
#Data frame total de delitos desde 2014
df <- df_total
# formato fecha
df$fecha <- as.Date(df$fecha, format ="%Y-%m-%d")
# Agrupar los datos por mes y calcular la suma del valor para cada mes
datos_mes <- df %>%
  group_by(mes = format(fecha, "%Y-%m")) %>%
  summarise(total = n())

#df_count$dia <- as.numeric(format(df_count$fecha, "%j"))

delitos_ts <- ts(datos_mes$total, start = 2014, frequency = 12)
delitos_ts
print(delitos_ts)
plot(delitos_ts)

#log
logdelitos_ts <- log(delitos_ts)
plot.ts(logdelitos_ts)

timeseriescomponents <- decompose(delitos_ts)
timeseriescomponents$seasonal
plot(timeseriescomponents)

