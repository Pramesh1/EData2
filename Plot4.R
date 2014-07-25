barplot(my_sum2,col = c("Pink", "Grey", "blue", "black"), xlab = "Year", ylab = "Emissions")
dev.copy(png,file="plot4.png")
dev.off()