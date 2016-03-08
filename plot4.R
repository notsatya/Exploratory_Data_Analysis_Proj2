library(ggplot2)
library(dplyr)
setwd("/Users/satya/Rprog/Exploratory_Data_Analysis/project2")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# pick all the rows in SCC that have test Coal in them
temp<- grepl(c("^.*Coal"),SCC$Short.Name) 
SCC_coal <- SCC[temp,c("SCC","Short.Name")]
# View the column Short.Name
View(SCC_coal)
# Further subset the rows that have text "comb" in SCC_coal.
temp2<- grepl(c("^.*Comb"),SCC_coal$Short.Name)
SCC_combcoal <- as.character(SCC_coal$SCC[temp2])

#pick the rows in NEI that match the SCC numbers with that of SCC_combcoal
rows <- NEI$SCC %in% SCC_combcoal
NEI_comb <-NEI[rows,]

#First box plot shows all the raw emissions data
p<- ggplot(NEI_comb,aes(as.factor(year),log10(Emissions)))
p+geom_boxplot(color="BLUE")
ggsave("plot4a.png")

t<- with (NEI_comb, tapply(Emissions, year,sum))
total_emissions <- data.frame(total.Emissions=t)
p<- ggplot(total_emissions,aes(row.names(total_emissions),total_emissions$total.Emissions))
p+geom_point(color="RED",size=4)
ggsave("plot4b.png")
