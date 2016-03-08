library(ggplot2)
library(dplyr)
setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI_baltimore <- subset(NEI,fips=="24510")

# subset the source names that have "Vehicle" in them
t5<- grepl(c("^.*Vehicle"),SCC$Short.Name) 
SCC_Vehicle <- SCC[t5,c("SCC")]

# NEI_baltimore_vehicle is a subset of NEI_baltimore with only SCC values that correspond to Vehicles
rows <- NEI_baltimore$SCC %in% SCC_Vehicle
NEI_baltimore_vehicle <-NEI_baltimore[rows,]

total_em_veh<- with (NEI_baltimore_vehicle, tapply(Emissions, year,sum))
plot(names(total_em_veh),total_em_veh,xlab="year", main="total emissions for Baltimore city from vehicles", ylab="total emissions of PM2.5",pch=5,lwd=3,xaxt="n")
axis(side = 1, at = names(total_em_veh),labels = T)
dev.copy(png, file="plot5.png", height=480, width=480)
dev.off()
