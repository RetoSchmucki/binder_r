
a <- c(1:10)
b <- 3*a -0.43*a^2
plot(a,b, type = 'l', col = 'magenta')

data_sf <- sf::st_as_sf(data.frame(xcoord = c(1,1,1), ycoord = c(2,3,4)),coords = c("xcoord", "ycoord"), crs = 4326)
plot(sf::st_difference(sf::st_buffer(data_sf,3)), col = c("red", "orange", "yellow"))


