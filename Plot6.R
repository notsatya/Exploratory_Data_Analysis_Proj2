library(ggplot2)
library(dplyr)
setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Make a subset from NEI with the only rows corresponding to Balitmore City and LosAngeles county
NEI_Balt_LA <- subset(NEI,fips %in% c("24510","06037"))

# subset the source names that have "Vehicle" in them
t5<- grepl(c("^.*Vehicle"),SCC$Short.Name) 
SCC_Vehicle <- SCC[t5,c("SCC")]


rows <- NEI_Balt_LA$SCC %in% SCC_Vehicle
NEI_Balt_LA <-NEI_Balt_LA[rows,]
# convert the fips column from numbers to city/county names for the ease of plotting
NEI_Balt_LA$fips[NEI_Balt_LA$fips== "24510"] <- "Baltimore City"
NEI_Balt_LA$fips[NEI_Balt_LA$fips== "06037"] <- "LosAngeles County"

t6<-ddply(NEI_Balt_LA,.(year,fips),summarise,sum=sum(Emissions))
# changing column names in the summary data frame for the ease of plotting
names(t6) <- c("year","location","Total.Emissions")

mt <- ggplot(t6, aes(year,Total.Emissions)) 
mt +  geom_point( aes(color=factor(location)),size=3 )
ggsave("plot6.png")

#Conclusion: LosAngeles County has seen much more significant changes (reduction) in total emissions from "Vehicle" sources between 1999 and 2008 than Baltimore City.


