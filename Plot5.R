barplot(my_engine_sum,  col = c("yellow", "yellow", "yellow", "yellow"), xlab = "Year", ylab = "Emissions")
dev.copy(png,file="plot5.png")
dev.off()