library(dplyr)
shp <-  geojsonio::geojson_read("https://opendata.arcgis.com/datasets/687f346f5023410ba86615655ff33ca9_4.geojson",
                                what = "sp")
shp <- shp[grepl("^E09",shp$ctyua16cd),]
coords <- sp::coordinates(shp)

mygrid <- cbind(shp@data[,c("ctyua16cd","ctyua16nm")], coords)
names(mygrid) <- c("code","name","col","row")

aspect_height <- max(mygrid$row) - min(mygrid$row)
aspect_width <- max(mygrid$col) - min(mygrid$col)

width_multiplier <- round(aspect_width / aspect_height, 0)

mygrid$col <- scale(mygrid$col)
mygrid$col <- mygrid$col + abs(min(mygrid$col))
mygrid$col <- round(((mygrid$col / max(mygrid$col)) * 9) + 1,0)

mygrid$row <- scale(mygrid$row)
mygrid$row <- mygrid$row + abs(min(mygrid$row))
mygrid$row <- round(((mygrid$row / max(mygrid$row)) * ((max(mygrid$col) / width_multiplier) - 1)) + 1,0)
mygrid$row <- max(mygrid$row) + 1 - mygrid$row

write.csv(mygrid,"london.csv",row.names=F)
##need to do some manual manipulation now