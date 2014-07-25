barplot(mysum, col = c("black", "red", "yellow", "brown"), xlab = "Year", ylab = "Total PM 2.5 Emissions")
dev.copy(png,file="plot1.png")
dev.off()     