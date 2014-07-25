barplot(my_sum1, col = c("Red", "Red", "Red", "Green"), xlab = "Year", ylab = "Total PM 2.5 Emissions")
dev.copy(png,file="plot2.png")
dev.off()