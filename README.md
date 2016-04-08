<!-- README.md is generated from README.Rmd. Please edit that file -->
BGM files for Atlantis
======================

Installation
------------

Install from Github using `devtools`.

``` r
# install.packages("devtools")
devtools::install_github("AustralianAntarcticDivision/bgmfiles")
```

List the available raw files available in this package.

``` r
files <- list.files(system.file("extdata", package = "bgmfiles"), recursive = TRUE, full.names = TRUE)

print(basename(files))
#> [1] "ams71.bgm"         "antarctica_28.bgm" "antarctica_99.bgm"
#> [4] "GOM_BGM.bgm"       "VMPA_setas.bgm"
```

See <https://github.com/mdsumner/rbgm> for an R package to read these files and work with the box geometry.

Contribute!
-----------

If you'd like to contribute example BGM files, please see <https://github.com/AustralianAntarcticDivision/box-geometry-models> or just get in touch directly.
