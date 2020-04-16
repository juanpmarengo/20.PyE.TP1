library(qcc)

datos <- read.csv("base.txt", header = TRUE, sep="\t", dec=",")
summary(datos)

# Grafico de torta de Origen
table <- table(datos$origen)
pct <- round(table / sum(table) * 100)
labels <- paste(names(table), pct)
labels <- paste(labels, "%", sep="")
png(file = "origen_piechart.png")
pie(table, labels = labels, main = "Grafico de torta de Origen")
dev.off()

# Grafico de barras de Especie TODO: Solucionar la visibilidad de los labels y ver el uso de stacked bars con origen
table <- table(datos$especie)
png(file = "especie_barras.png")
barplot(table, main = "Grafico de barras de Especie")
dev.off()

# Boxplot de Altura por Especie
png(file = "altura_por_especie_boxplot.png")
boxplot(altura ~ especie, data = datos, xlab = "Especie", ylab = "Altura (m)", main = "Boxplot de Altura por Especie")
dev.off()

# Histograma de Brotes TODO: No estoy seguro que sea la mejor idea
png(file = "brotes_histograma.png")
hist(datos$brotes, xlab="Brotes", main = "Histograma de Brotes")
dev.off()

