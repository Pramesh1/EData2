## EDA Assignment 2
## Data source = Source_Classification_Code.rds & summarySCC_PM25.ds 
## Files are located int he root directory

library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
#
#Q1/Q2/Q3 
#
mysum <- tapply(NEI$Emissions, NEI$year, sum)
my_balt<- subset(NEI, fips=="24510")
my_sum1 <- tapply(my_balt$Emissions, my_balt$year, sum)  # class array
my_tot<- aggregate (Emissions~type+year, data=my_balt,FUN="sum")  # class data frame
#
# For Q4
#
my_coal<-SCC[grep("Comb.*Coal|Coal.*Comb",SCC$Short.Name),]  
my_nei<- NEI[which(NEI$SCC %in% my_coal$SCC),]
my_sum2 <- tapply(my_nei$Emissions, my_nei$year, sum)  # class array
#
# for Q5
#
my_engine_scc<-SCC[grep("Mobile",SCC$EI.Sector),]
my_engine_nei<- NEI[which(NEI$SCC %in% my_engine_scc$SCC),]
my_engine_balt<-my_engine_nei[my_engine_nei$fips=="24510",]
my_engine_sum <- tapply(my_engine_balt$Emissions, my_engine_balt$year, sum)  # class array
#
# fro Q6
#
my_engine_both<-my_engine_nei[my_engine_nei$fips=="24510"|my_engine_nei$fips=="06037",]
my_engine_total <- aggregate(Emissions ~ fips + year, data=my_engine_both,FUN="sum")

#str(my_engine_total)
#head(my_engine_total)

dataset_bl<-subset(my_engine_total, fips=="24510")
dataset_bl$city<-"Baltimore"
dataset_la<-subset(my_engine_total, fips=="06037")
dataset_la$city<-"Los Angeles"
my_dataset<-rbind(dataset_la,dataset_bl)


