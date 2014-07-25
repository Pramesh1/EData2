qplot(year, Emissions, data=my_dataset,facets=.~city,geom=c("point","line"))
dev.copy(png,file="plot6.png")
dev.off()