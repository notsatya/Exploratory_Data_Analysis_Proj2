setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# t stores the total emissions by year as a list
t <- tapply(NEI$Emissions,NEI$year,sum) 

# plot t
plot(names(t),t,xlab="year", main="total emissions of PM2.5", ylab="total emissions",pch=5,lwd=3)
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
