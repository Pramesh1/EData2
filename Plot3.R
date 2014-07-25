qplot(year, Emissions, data=my_tot,facets=.~type,geom="point")
dev.copy(png,file="plot3.png")
dev.off()