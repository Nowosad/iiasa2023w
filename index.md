# R-Spatial workshop at IIASA 2023

*02-10-2023 at 13:30 in Raiffa Room*

Instructor: [Jakub Nowosad](https://jakubnowosad.com/iiasa2023/#/hello-i-am-jakub)

Ask a question: https://oneask.app/e/iiasa2023 

### Prerequisites

You are expected to have a working recent version of R and RStudio (see https://posit.co/download/rstudio-desktop/) installed, along with several R packages listed below.

```r
install.packages("remotes")
pkgs = c("sf", "terra", "spData", "dplyr", "tmap", "tidyr", "units", "rmapshaper")
remotes::install_cran(pkg_list)
install.packages("spDataLarge", repos = "https://geocompr.r-universe.dev")
```

### Workshop materials

Main resource:

- [Geocomputation with R’s guide to reproducible spatial data analysis](https://jakubnowosad.com/ogh2022/#/title-slide): slides 1-49

Additional resources:

- [Geocomputation with R: Making maps with R](https://r.geocompx.org/adv-map)
- [Image processing and all things raster](https://jakubnowosad.com/SIGR2021/workshop2/workshop2.html)

