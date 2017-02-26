library(XML)
library(leafletCN)

table = readHTMLTable("http://www.pm25.in/rank",encoding ="UTF-8",stringsAsFactors=F)[[1]]
dat=table[,2:3]
names(dat) = c("city", "AQI")
dat$AQI = as.numeric(dat$AQI)

geojsonMap(dat,"city",popup = paste0(dat$city,"=>",dat$AQI),palette = "Reds",legendTitle = "Jason")
