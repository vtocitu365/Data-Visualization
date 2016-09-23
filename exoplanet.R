library(plotrix)
library(ggplot2)
library(grid)
setwd("C:/pywork/exoplanet")
getwd

exoplanet <-read.csv('exoplanets.csv', na.strings=c("", "NA"), 
                     stringsAsFactors=FALSE, sep = ',')
dim(exoplanet)
names(exoplanet)
summary(exoplanet)

discovery <- c(unique(exoplanet$PLANETDISCMETH))
seq(discovery)
discovery[1]
exo1<-function(date, discovery)
{
  plot(c(0, 100), c(0, 100), type = "n")
  theta <- seq(0, 2 * pi, length = 200)
  for (n in seq(discovery))
  {
    data=subset(exoplanet, exoplanet$DATE == date & exoplanet$PLANETDISCMETH == discovery[n])
    y_center <- median(data$PERIOD)
    x_center <- median(data$R)
    radius <- sqrt(unique(data$numPlanets))
    lines(x = x_center + radius * cos(theta), y = y_center + radius * sin(theta))
  }
}
exo1(2013,discovery)
