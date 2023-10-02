library(terra)
my_file_path = system.file("raster/srtm.tif", package = "spDataLarge")
srtm = rast(my_file_path)
srtm

myurl = "/vsicurl/https://zenodo.org/record/5774954/files/clm_snow.prob_esacci.dec_p.90_500m_s0..0cm_2000..2012_v2.0.tif"
snow = rast(myurl)
snow
rey = data.frame(lon = -21.94, lat = 64.15)
snow_rey = extract(snow, rey)
snow_rey

nz4326 = st_transform(nz, "EPSG:4326")
plot(nz4236)

snow_nz = crop(snow, nz4236, filename = "nz_snow.tif")
plot(snow_nz)

nz_south = subset(nz4326, Island == "South")
plot(nz_south[0])

snow_nz_south = crop(snow_nz, nz_south, mask = TRUE)
plot(snow_nz_south)

snow_nz_south2 = project(snow_nz_south, nz,
                         method = "bilinear")
plot(snow_nz_south2)

global(snow_nz_south, "mean", na.rm = TRUE)
global(snow_nz_south2, "mean", na.rm = TRUE)

sn2 = snow_nz_south2 + 50
plot(sn2)

library(tmap)
tm_shape(snow_nz_south2) +
    tm_raster(col.legend = tm_legend(title = "SNOW!!!:")) +
    tm_shape(nz_south) +
    tm_borders()
