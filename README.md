[![Linux Build Status](https://travis-ci.org/AustralianAntarcticDivision/bgmfiles.svg?branch=master)](https://travis-ci.org/AustralianAntarcticDivision/bgmfiles) [![Windows Build Status](https://ci.appveyor.com/api/projects/status/github/AustralianAntarcticDivision/bgmfiles?branch=master&svg=true)](https://ci.appveyor.com/project/AustralianAntarcticDivision/bgmfiles) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/bgmfiles)](https://cran.r-project.org/package=bgmfiles) [![Coverage Status](https://img.shields.io/codecov/c/github/AustralianAntarcticDivision/bgmfiles/master.svg)](https://codecov.io/github/AustralianAntarcticDivision/bgmfiles?branch=master)

<!-- README.md is generated from README.Rmd. Please edit that file -->
BGM files for Atlantis
======================

A raw-data package with example .bgm files (box geometry model) for Atlantis ecosystem model.

Atlantis is a deterministic, biogeochemical, whole-of-ecosystem model. <http://atlantis.cmar.csiro.au/>.

**PLEASE NOTE:** this is not an official source of BGM for use in Atlantis.

See <https://github.com/mdsumner/rbgm> for an R package to read these files and work with the box geometry.

See <https://github.com/AustralianAntarcticDivision/box-geometry-models> for the project that collects the files used in this package.

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
#>  [1] "AEEC_poly_projETRS89_LAEA_snapped0p002.bgm"
#>  [2] "ams71.bgm"                                 
#>  [3] "antarctica_28.bgm"                         
#>  [4] "antarctica_99.bgm"                         
#>  [5] "CalCurrentV3_utm.bgm"                      
#>  [6] "GOM_BGM.bgm"                               
#>  [7] "Guam_utm1.bgm"                             
#>  [8] "JFRE_ll.bgm"                               
#>  [9] "JFRE_xy.bgm"                               
#> [10] "NGOM.bgm"                                  
#> [11] "Nordic02.bgm"                              
#> [12] "VMPA_setas.bgm"
```

If needed filter based on a specific string with the `pattern` argument:

``` r
afiles <- bgmfiles(pattern = "^antarc")
print(basename(afiles))
#> [1] "antarctica_28.bgm" "antarctica_99.bgm"
```

This package exists as a data package to install example files, the function `bgmfiles` is ridiculously simple and simply runs file finding functions:

``` r
files <- list.files(system.file("extdata", package = "bgmfiles"), pattern = NULL, full.names = TRUE, recursive = TRUE)

print(basename(files))
#>  [1] "AEEC_poly_projETRS89_LAEA_snapped0p002.bgm"
#>  [2] "ams71.bgm"                                 
#>  [3] "antarctica_28.bgm"                         
#>  [4] "antarctica_99.bgm"                         
#>  [5] "CalCurrentV3_utm.bgm"                      
#>  [6] "GOM_BGM.bgm"                               
#>  [7] "Guam_utm1.bgm"                             
#>  [8] "JFRE_ll.bgm"                               
#>  [9] "JFRE_xy.bgm"                               
#> [10] "NGOM.bgm"                                  
#> [11] "Nordic02.bgm"                              
#> [12] "VMPA_setas.bgm"
```

We don't need to load or attach the package to find these files, but using the installation mechanism is very convenient for R use.

Contribute!
-----------

If you would like to contribute example BGM files, please see <https://github.com/AustralianAntarcticDivision/box-geometry-models> or just get in touch directly.
