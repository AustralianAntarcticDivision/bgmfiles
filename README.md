<!-- README.md is generated from README.Rmd. Please edit that file -->
BGM files for Atlantis
======================

A raw-data package with example .bgm files (box geometry model) for Atlantis.

See <https://github.com/mdsumner/rbgm> for an R package to read these files and work with the box geometry.

Installation
------------

Install from Github using `devtools`.

``` r
# install.packages("devtools")
devtools::install_github("AustralianAntarcticDivision/bgmfiles")
```

Usage
-----

List the available raw files available in this package.

``` r
library(bgmfiles)
files <- bgmfiles()
print(basename(files))
#> [1] "ams71.bgm"         "antarctica_28.bgm" "antarctica_99.bgm"
#> [4] "GOM_BGM.bgm"       "VMPA_setas.bgm"
```

If we need to we can also filter based on a specific string with the `pattern` argument:

``` r
afiles <- bgmfiles(pattern = "^antarc")
print(basename(afiles))
#> [1] "antarctica_28.bgm" "antarctica_99.bgm"
```

This package is really just a data package to install the example files, the function `bgmfiles` is ridiculously simple this is all it does:

``` r
files <- list.files(system.file("extdata", package = "bgmfiles"), recursive = TRUE, full.names = TRUE)

print(basename(files))
#> [1] "ams71.bgm"         "antarctica_28.bgm" "antarctica_99.bgm"
#> [4] "GOM_BGM.bgm"       "VMPA_setas.bgm"
```

We don't really need to load or attach the package to find these files, but using the installation mechanism is very convenient for R use.

Contribute!
-----------

If you would like to contribute example BGM files, please see <https://github.com/AustralianAntarcticDivision/box-geometry-models> or just get in touch directly.
