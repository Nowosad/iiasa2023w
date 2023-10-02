library(spData)
library(sf)
plot(world)
world

world = read_sf("data/world.gpkg")
world

mean(world$lifeExp, na.rm = TRUE)

library(ggplot2)
ggplot(world, aes(lifeExp, gdpPercap)) + geom_point()

plot(world)
plot(world["lifeExp"])
plot(world)

world_2022 = st_drop_geometry(world)["name_long"]
world_2022$lifeExp2022 = sample(50:90, size = nrow(world_2022), replace = TRUE)


library(dplyr)
world_new = left_join(world, world_2022, by = "name_long")
plot(world_new["lifeExp2022"])

plot(world[0])

world[, 1:3]
st_drop_geometry(world)

world_cent = st_centroid(world)


plot(world_cent[0])

world_buf = st_buffer(world_cent, 50000)
plot(world_buf[0])


library(tmap)
world_new2 = st_transform(world_new, "ESRI:53035")

tm_shape(world_new2) +
    tm_polygons(fill = "lifeExp2022",
                fill.scale = tm_scale_continuous(values = "greens3"),
                fill.legend = tm_legend(title = "Life \nExpectancy \n(2022)"))

tm1 = tm_shape(nz) +
    tm_graticules() +
    tm_polygons(fill = "Median_income",
                fill.scale = tm_scale_intervals(values = "greens3")) +
    tm_scalebar() +
    tm_compass(position = c(0.5, 0.5)) +
    tm_credits("Jakub Nowosad, 2023") +
    tm_shape(nz_height) +
    tm_symbols() +
    tm_title("BEST MAP EVER!!!!")

tmap_save(tm1, "my_map.png")

tm2 = tm_shape(nz) +
    tm_polygons(fill = "Median_income",
                fill.scale = tm_scale_intervals(values = "greens3"))
tm2

tmap_mode("view")
tm2

tmap_mode("plot")
tm2
