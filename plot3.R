library(ggplot2)
library(dplyr)
setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI_baltimore <- subset(NEI,fips=="24510")

# split NEI_baltimore data by year and source type
t3<-ddply(NEI_baltimore,.(year,type),summarise,sum=sum(Emissions))

mt <- ggplot(t3, aes(year,sum)) + geom_point() +labs(title="Total PM2.5 Emissions for Baltimore City split by source type")
mt + facet_grid(. ~ type,scales="free_x") 
ggsave("plot3.png")


