# R-Spatial workshop at IIASA 2023

<!-- Create a image of a beautiful landscape with a few old-style computers shown somewhere in the background of the picture [MircoRealism; StableDiffusion XL]-->
![](im.png)

*02-10-2023 at 13:30 in Raiffa Room*

Instructor: [Jakub Nowosad](https://jakubnowosad.com/iiasa2023/#/hello-i-am-jakub)

Website: <https://jakubnowosad.com/iiasa2023w>

<!--Ask a question: <https://oneask.app/e/iiasa2023>-->

### Prerequisites

You are expected to have a working recent version of R and RStudio (see https://posit.co/download/rstudio-desktop/) installed, along with several R packages listed below.

```r
install.packages("remotes")
pkgs = c("sf", "terra", "spData", "dplyr", "tmap", "tidyr", "units", "rmapshaper")
remotes::install_cran(pkg_list)
install.packages("spDataLarge", repos = "https://geocompr.r-universe.dev")
remotes::install_github("r-tmap/tmap")
```

### Workshop materials

Main resource:

- [Geocomputation with R’s guide to reproducible spatial data analysis](https://jakubnowosad.com/ogh2022/#/title-slide): slides 1-49

Additional resources:

- [Geocomputation with R: Making maps with R](https://r.geocompx.org/adv-map)
- [GIS and mapping: A lecture on on the GIS and mapping ecosystem of R](https://jakubnowosad.com/SIGR2021/lecture/lecture.html#9)
- [Upcoming changes to popular R packages for spatial data: what you need to do](https://geocompx.org/post/2023/rgdal-retirement/)
- [I Hate Coordinate Systems!](https://ihatecoordinatesystems.com/)
- [Switch from shapefile](http://switchfromshapefile.org/)
- [terra parallel](https://stackoverflow.com/questions/67445883/terra-package-returns-error-when-try-to-run-parallel-operations/67449818#67449818)
- [Migrating from sp, rgeos and rgdal to sf](https://github.com/r-spatial/sf/wiki/Migrating)
- [Image processing and all things raster](https://jakubnowosad.com/SIGR2021/workshop2/workshop2.html)

Code examples:

- [Vector data](vector_code.R)
- [Raster data](raster code.R)
