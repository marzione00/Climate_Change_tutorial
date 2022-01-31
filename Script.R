library(ggplot2)

edc.co2.2008_EXTRACTED <- read.csv("~/GitHub/Climate_Change_tutorial/Data/edc-co2-2008_EXTRACTED.txt", sep="")

CO2 <- data.frame(edc.co2.2008_EXTRACTED$Age, edc.co2.2008_EXTRACTED$CO2)
colnames(CO2)<- c("Age","CO2")
ggplot(data = CO2, aes(x = Age, y = CO2)) + geom_line(colour='red') + geom_point(colour='red')  + 
scale_x_continuous(name ="CO2 (ppm)") +  scale_y_continuous(name ="Age (yrBP)") + theme_bw()

CO2_mean <- mean(CO2$CO2)
Co2_sd <- sd(CO2$CO2)