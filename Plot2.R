library(dplyr)
setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# make a subset of NEI containing only Baltimore City data
NEI_baltimore <- subset(NEI,fips=="24510")

#t2 stores the total Emissions for Baltimore City
t2<- with (NEI_baltimore, tapply(Emissions, year,sum))

#plot t2
plot(names(t2),t2,xlab="year", main="total emissions for Baltimore city", ylab="total emissions of PM2.5",pch=5,lwd=3,xaxt="n")
axis(side = 1, at = names(t2),labels = T)
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()


