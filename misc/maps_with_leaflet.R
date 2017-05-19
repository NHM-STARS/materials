library(tidyverse)
library(leaflet)
# How to map data with Leaflet

download.file(
  "https://commondatastorage.googleapis.com/ckannet-storage/2012-07-09T214020/global_airports.csv",
  destfile = "global_airports.csv"
)
df <- read_csv("./global_airports.csv")
names(df)
leaflet(df) %>% addTiles() %>% addCircles()
# You can also pipe in bounds by adding
# %>%  fitBounds(lng1,	lat1,	lng2,	lat2)
# or adding a center to zoom into
# setView(lng,	lat,	zoom,	options	=	list())

# A more complex map
leaflet(sample_frac(df, 0.01)) %>% 
    addProviderTiles(providers$Esri.WorldStreetMap) %>% 
    addCircles() %>% 
    addMarkers()

# Set the center of the map to London, NHM
leaflet(sample_frac(df, 0.01)) %>% 
  addProviderTiles(providers$Esri.WorldStreetMap) %>% 
  addCircles() %>% 
  addMarkers() %>%
  setView("0.1278", "51.5074", zoom = 5)


