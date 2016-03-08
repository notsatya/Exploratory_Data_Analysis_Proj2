# Exploratory_Data_Analysis_Proj2
Course Project2


Instructions for this project as described in the Coursera website:

-->Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.
-->For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.

Questions


1) Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot1.png)
>Conclusion: Total Emissions reduced in the United States reduced from 1999 to 2008

2) Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot2.png)
>Conclusion: Total Emissions in Baltimore City have reduced from 1999 to 2008

3) Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot3.png)
>Conclusion: In Baltimore City, all source types except "POINT" saw a reduction in total emissions from 1999 to 2008. Source type "POINT" saw a slight increase in total emissions.

4) Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot4a.png)
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot4b.png)
>Conclusion:Across the United States, total emissions from coal combustion have reduced from 1999 to 2008. It is interesting to note that the median of the Emissions distribution has not changed significantly across these years but the high fliers in 1999,2002 & 2004 are not present in 2008 any more. Hence the total reduced.

5) How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot5.png)
>Conclusion:Total emissions from "Vehicle" type sources has reduced in Baltimore city from 1999 thru 2008.

6) Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions?
![My image](https://github.com/notsatya/Exploratory_Data_Analysis_Proj2/blob/Submission2/plot6.png)
>Conclusion: LosAngeles County has seen much more significant changes (reduction) in total emissions from "Vehicle" sources between 1999 and 2008 than Baltimore City.


