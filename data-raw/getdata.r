## get data from box-geometry-models


## cd data-raw/
## git clone https://github.com/AustralianAntarcticDivision/box-geometry-models.git
fs <- list.files("data-raw/box-geometry-models/data/bgm/", full.names = TRUE, pattern = ".bgm")
tofs <- file.path("inst/extdata/bgm", basename(fs))
dir.create(dirname(tofs)[1], showWarnings = FALSE, recursive = TRUE)
file.copy(fs, tofs, overwrite = TRUE)

